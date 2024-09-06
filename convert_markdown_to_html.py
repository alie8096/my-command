import markdown
from pygments import highlight
from pygments.lexers import get_lexer_by_name, TextLexer
from pygments.formatters import HtmlFormatter
from bs4 import BeautifulSoup
import re

# Function to highlight code blocks


def highlight_code(code, language):
    try:
        lexer = get_lexer_by_name(language, stripall=True)
    except Exception:
        lexer = TextLexer(stripall=True)

    formatter = HtmlFormatter(cssclass="codehilite", style="colorful")
    highlighted_code = highlight(code, lexer, formatter)

    # Define code-info HTML structure
    code_info = f"""
    <div class="code-info">
        <button class="copy-icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>
            <span>Copy code</span>
        </button>
        <span class="language">{language}</span>
    </div>
    """

    # Insert code-info HTML inside highlighted code
    highlighted_code = re.sub(r'<div class="codehilite">', f'<div class="codehilite">{
                              code_info}', highlighted_code)
    return highlighted_code

# Function to parse and highlight code blocks in Markdown


def parse_code_blocks(md_text):
    lines = md_text.split('\n')
    inside_code_block = False
    language = ""
    code_block = []
    parsed_text = []

    for line in lines:
        if line.startswith("```") and not inside_code_block:
            language = line[3:].strip()
            inside_code_block = True
            code_block = []
        elif line.startswith("```") and inside_code_block:
            highlighted_code = highlight_code('\n'.join(code_block), language)
            parsed_text.append(highlighted_code)
            inside_code_block = False
        elif inside_code_block:
            code_block.append(line)
        else:
            parsed_text.append(line)

    if inside_code_block:
        parsed_text.append(highlight_code('\n'.join(code_block), language))

    return '\n'.join(parsed_text)

# Function to convert Markdown to HTML with code highlighting


def markdown_to_html(md_text):
    html_with_highlighted_code = parse_code_blocks(md_text)
    html_content = markdown.markdown(html_with_highlighted_code, extensions=[
                                     'fenced_code', 'codehilite', 'tables'])
    return html_content


# Read and convert the README.md file
with open('README.md', 'r', encoding='utf-8') as file:
    md_text = file.read()

html_output = markdown_to_html(md_text)

# HTML template for the output
html_template = f"""
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>My Command</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Command e-booklet">
<meta name="author" content="Mahdi Rezaie, Ali Ebrahimian">
<link rel="stylesheet" type="text/css" href="statics/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<main>
    <div class="container">
        <div class="content">
            {html_output}
        </div>
    </div>
</main>
<script src="statics/app.js"></script>
</body>
</html>
"""

# Save the final HTML output
with open('index.html', 'w', encoding='utf-8') as file:
    file.write(html_template)
