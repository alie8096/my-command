// انتخاب تمام div هایی که کلاس codehilite دارند
const codeBlocks = document.querySelectorAll('.codehilite');

// تعریف محتوای HTML برای اضافه کردن به ابتدای هر div
const copyButtonHTML = `
    <div class="code-info">
        <button class="copy-icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24" class="icon-sm">
                <path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path>
            </svg>
            <span>Copy code</span>
        </button>
    </div>
`;

// اضافه کردن HTML به ابتدای هر div با کلاس codehilite
codeBlocks.forEach(block => {
    block.insertAdjacentHTML('afterbegin', copyButtonHTML);
});


document.querySelectorAll('.copy-icon').forEach(icon => {
    icon.addEventListener('click', () => {
        const codeBox = icon.closest('.codehilite');
        const codeContent = codeBox.querySelector('pre').innerText;
        copyToClipboard(codeContent);
        const originalText = icon.innerHTML;
        icon.innerHTML = 'Copied ✓';
        setTimeout(() => {
            icon.innerHTML = originalText;
        }, 1300);
    });
});

function copyToClipboard(text) {
    const textarea = document.createElement('textarea');
    textarea.value = text;
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand('copy');
    document.body.removeChild(textarea);
}
