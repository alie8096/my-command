# my-command

## Cheatsheets

- <a href="https://devhints.io/vim" style="font-size: 2rem; font-weight: bold;" target="_blank"><img src="Images/vim-icon.svg"  style="width: 30px; height: 30px"/> Vim</a>

- <a href="https://www.howtogeek.com/307701/how-to-customize-and-colorize-your-bash-prompt/" style="font-size: 2rem; font-weight: bold;" target="_blank">Customize Bash</a>


---

## Compile C

```bash
gcc -o caesar caesar.c -lcs50
```

## Get all branch of repository

```bash
git fetch --all && git pull origin '*:*'
```

## Install the download package

```bash
sudo dpkg -i package.deb
```

## Merge two branch

`merge branch 2 to branch 1`

```bash
git merge branch2
```

## Display or Check SHA256 checksum

`Display and check hash of a file or text`

---

### SHA256

- display hash of a sample text "Hello, world"

```bash
echo Hello, world| sha256sum
```

OR

```bash
printf Hello, world | sha256sum
```

- check hash of ubuntu downloaded

```bash
cd download_directory && sha256sum ubuntu-9.10-dvd-i386.iso
```

### KECCAK-256 (SHA-3)

```bash
printf Hello, world | openssl dgst -sha-256sum
```

---

## Google Colab

- use from file in google colab

  ```ipynb
  from google.colab import drive
drive.mount('/content/drive/')
  ```

## Tmux

| Activation | Command |
| --- | --- |
| Zoomin window | ``Ctrl + b`` ``z`` |
| Zoomout window | ``Ctrl + b`` ``z``   |
| Vertical division window | ``Ctrl + b`` ``%`` |
| Horizontal division window | ``Ctrl + b`` ``"`` |
| Close a window | ``Ctrl + b`` ``x`` |
| Close all windows (close tmux) | ``Ctrl + b`` ``&`` |
| Resize winddows | ``Ctrl + b`` ``⭠ ⭡ ⭣ ⭢`` |
| Show Time | ``Ctrl + b`` ``t`` |
| Number of windows | ``Ctrl + b`` ``q`` |

---

## Vim

| Description | Command | Description |
| --- | --- | --- |
| Copy mode | ``Ctrl + v`` |  |
| Copy | ``"`` + ``+`` + ``y`` |  |
| Pase | ``"`` + ``+`` + ``p`` |  |
| Write on the previuse line | ``Shift + o`` | for open a line before |
| Write on the next line | ``o`` | for open a line after |
| Append | ``Shift + a`` | for append text in end line |
| Append | ``a`` | for append text after next character |
| Delete word | ``d + w`` | for delete word |
| Delete line | ``d + $`` | for delete line |
| Delete line (cut) | ``d + d`` | for delet line (all) |
| Move word | ``w`` | for move on the beginning of words |
| Move word | ``b`` | Backward to start  of current/previous word |
| Move word | ``e`` | for move on the ends of words |
| Start line | ``0`` | for move on the beginning of lines |
| End line | ``$`` | for move on the ends lines |
| Delete multi word | ``5 + d + w`` | for delete 5 words |
| Undo | ``u`` | for undo one by one |
| Undo | ``Shift + u`` | for undo |
| Redo | ``Ctrl + r`` | for redo |
| Replace | ``r`` | for replace a letter |
| Correct | ``ce`` or ``cw`` or ``c$`` or ... | `ce`:Correct and replace untile end of word. `c$`: Correct from the word until end of the line. |
| Show file info | ``Ctrl + g`` | Show file name, lines and ... |
| End of the file | ``Shift + g`` | go to end file |
| Start of the file | ``g + g`` | go to start file |
| Go to line n | ``n + Shift + g`` | Go to line n (n is a natural number) |
| Search | ``/`` | For search in forwqrd |
| Search | ``?`` | for search in backward |
| Next | ``n`` | next finded |
| Previous | ``Shift + n`` | previous finded |
| Find maches | ``%`` | find maches parantesis or brocets or ... |

- **Substitude**

``:[range]s/pattern/replacement/[flags]`` 

  + ***[range]***
    - `%` -> All content
    - `10, 20` -> Line 10-20
  + ***pattern*** -> RegEx
  + ***replacement*** -> text
  + ***[flags]***
    - `g` -> All selected by **pattern**
    - `c` -> Accept for each replace (confirm)

  * for example: *replace foo inestead of bar on all content*
 
    ```vim
    :%s/bar/foo/g
    ```
### Customize vim

- <a href="https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/" style="font-weight: bold;" target="_blank">Customize Vim</a>

---

## Git


  ```bash
  git clone <repo-url>
  cd <repo>
  git fetch --all
  for branch in $(git branch -r | grep -v '\->');do git branch --track "${branch#origin/}" "$branch"; done
  ```

- To push all branches

  ```bash
  git push --all origin
  ```

  OR

  ```bash
  git push origin branch1 branch2 branch3 ...
  ```

- To commit on the latest commit

  ```bash
  git add .
git commit --amend --no-edit
  ```

- To check status of the commits

  ```bash
  git branch --verbose
  ```

- Show graphically git log

  ```bash
  git log --all --decorate --online --graph
  ```


- Get spesific branch from repo

  ```bash
  git clone --branch=main https://github.com/username/repo.git
  ```

- Get spesific commits from repo (for example 01 last commit)

  ```bash
  git clone --depth 10 https://github.com/username/repo.git
  ```

- Local clone repository (from this path to another path locally)

  ```bash
  git clone repo_path
  ```

- Show changes by HEAD commit

  ```bash
  git diff
  ```

  OR

  ```bash
  git diff HEAD
  ```

- Show changes from the last commit with 5 commits before the HEAD

  ```bash
  git diff HEAD~5
  ```

- Show changes from the last commit with 5 commits befor the HEAD for spacial files

  ```bash
  git diff HEAD~5 file
  ```

- Git log

  - Simple log
 
    ```bash
    git log
    ```
  
  - One line
 
    ```bash
    git log --oneline
    ```

  - Show graphicaly log
 
    ```bash
    git log --graph --oneline
    ```

- Git stash 

  - Save current changes to a specific (accessible) location and go to the last commit
  (tracted files)
 
    ```bash
    git add .
git stash
    ```
 
  - Save current changes to stash (tracted & untracted files)
    ```bash
    git stash -u
    ```
 
  - Save current changes to stash (tracted & untracted & ignored [all] files)
 
    ```bash
    git stash -a
    ```

  - Show stash 
 
    ```bash
    git stash show
    ```

  - Reverting stash changes (by stash number)
 
    ```bash
    git stash pop stash@\{0\}
    ```

- Git Blame

  `Information about each line of a file`

  ```bash
  git blame file
  ```

- Git Tag (readable name instead of hash name)

  - Create tag for this commit
 
    ```bash
    git tag "tag_name"
    ```
  
  - Assigning a tag to another commit based on hash name
 
    ```bash
    git tag "tag_name" 528a389
    ```

- Git Reflog


 ```bash
 git reflog
 ```
---

## Linux


- To mount external hard

  ```bash
  sudo mount -t ntfs-3g /dev/sdb2 /mnt
  ```

- Exteract `example.zip` in to example/

  ```bash
  unzip example.zip -d example
  ```

- find file

  `find [parent-path] -type [type] -iname "name"`

  ```bash
  find /home -type f -iname "file-*.txt"
  ```

- **cat & tac**

  - `cat`: show file from beginning to end.
    - `-n` -> number lines
    - `-b` -> number lines none block
    - `-A` -> end lines
    - `-s` -> remove white enter
  - `tac`: show file from end to beginning.

- **Change Python version**

  - if call python run python2
  
    ```bash
    sudo ln -sf /user/bin/python2 /user/bin/python
    ```

- **Changing user with root access**

  ```bash
  vim /etc/sudoers
  ```
  
  `user   host=(user)    command`

  - go to line `#Allow root to run any commands anywhere` and added ...
 
    ```bash
    user  ALL=(ALL)    ALL
    ```
  
  - The user can onlychange their password (passwd command)
 
    ```bash
    user  ALL=(ALL)    /bin/passwd
    ```

### Ubuntu

- Move to monitors

``Super + Shift + ⭠ ⭡ ⭣ ⭢``

- Move window

``Alt + F7 + ⭠ ⭡ ⭣ ⭢ + Enter``

- Change size

``Alt + F8 + ⭠ ⭡ ⭣ ⭢ + Enter``

---

###  **SSH**

  - get IP config -> (int 127.23.21.11)
 
    must be install `sudo apt install net-tools`
 
    ```bash
    ifconfig
    ```
    
  - ssh to phone (android)
 
    ```bash
    ssh u0_aXXX@192.168.X.X -p 8022
    ```

#### **SSH-KEYGEN**

- generate ssh-kegen

  ```bash
  ssh-keygen
  ```

- Introducing another system's IP and saving it in the current system
  
  ```bash
  sudo vim /etc/hosts
  ```
 
  append ip to hosts file
 
  ```bash
  192.168.X.X  other-sys
  ```

- easy ssh

  ```bash
  ssh u0_aXXX@other-sys
  ```

#### **SCP (secure copy)**

- copy file `test.txt` from other sytem to this system (by recursive)

```bash
scp -r u0_aXXX@other-sys:test.txt .
```

---

## Emmet (HTML-CSS)

### HTML

- [***📑 Emmet CheatSheet***](https://docs.emmet.io/cheat-sheet/)

- **Command**: `a:www.google.com`
   - **Description**: Add `href` to the `<a>` tag.
   - **Result**:
     ```html
     <a href="www.google.com"></a>
     ```

- **Command**: `a[https://google.com]`
   - **Description**: Add `href` to the `<a>` tag.
   - **Result**:
     ```html
     <a href="https://google.com"></a>
     ```

- **Command**: `ul<li{example text $}*5`
   - **Description**: Add content to multiple `<li>` tags and repeat them.
   - **Result**:
     ```html
     <ul>
  <li>example text $</li>
  <li>example text $</li>
  <li>example text $</li>
  <li>example text $</li>
  <li>example text $</li>
</ul>
     ```

-  **Command**: `ul>li#item$@-43*5`
   - **Description**: Inverse the number from 43, and create 5 `<li>` elements with the inverted number as part of the content.
   - **Result**:
     ```html
     <ul>
  <li id="item-43">item-43</li>
  <li id="item-42">item-42</li>
  <li id="item-41">item-41</li>
  <li id="item-40">item-40</li>
  <li id="item-39">item-39</li>
</ul>
     ```

- **Command**: `table>(thead>tr>th{col$}*4) + (tbody>tr*3>td{row$-$}*4)`
   - **Description**: Create a table with automatic content, including a header and body rows with numbered columns and rows.
   - **Result**:
     ```html
     <table>
  <thead>
    <tr>
      <th>col1</th>
      <th>col2</th>
      <th>col3</th>
      <th>col4</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>row1-1</td>
      <td>row1-2</td>
      <td>row1-3</td>
      <td>row1-4</td>
    </tr>
    <tr>
      <td>row2-1</td>
      <td>row2-2</td>
      <td>row2-3</td>
      <td>row2-4</td>
    </tr>
    <tr>
      <td>row3-1</td>
      <td>row3-2</td>
      <td>row3-3</td>
      <td>row3-4</td>
    </tr>
  </tbody>
</table>
     ```

---

## Text

- **head**

  View the first 15 lines of the file
  
  ```bash
  head -n 15 file.txt
  ```

- **tail**

  View the last 15 lines of the file

  ```bash
  tail -n 15 file.txt
  ```
- **cat**

  Show files with line numbers

  ```bash
  cat -n file.txt
  ```

- **grep**

   - Filter file after line 190 by "ali"
 
     ```bash
     grep -A 190 ali file.txt
     ```
     OR
 
     ```bash
     tail -n 40 file.txt | grep ali 
     ```

   - Filter file before line 190 by "ali"
 
     ```bash
     grep -B ali file.txt
     ```

   - To don't show phrase(for example: filter by ali but does include hadi)
 
     ```bash
     grep ali | grep -v hadi
     ```

   - To recursive filter
  
     ```bash
     grep -r .py ~/Desktop
     ```

- **egrep**

  For RegEx

  - find exactly a and 2 l
 
    ```bash
    egrep 'al{2}' file.txt
    ```

  - find a and minimum 2 l
 
    ```bash
    egrep 'al{2,}' file.txt
    ```

  - find a and maximum 2 l
 
    ```bash
    egrep 'al{,2}' file.txt
    ```

- **diff**

  - differente lines in 2 simailar files
 
    ```bash
    diff file1.txt file2.txt
    ```

- **cut**

  > remove sections from each lines of files

  - Processing stdout `ls -lh` and get field 5 and 10 and saving into fileinfo.txt
 
    ```bash
    ls -lh | cut --delimiter=" " -f 5,10 > fileinfo.txt
    ```


- **tr**

  > translate or delete characters

  - lowercase to uppercase (freq -> FREQ)
 
    ```bash
    echo 'freq' | tr [:lower:] [:upper:]
    ```

---

## **Phone**

- get username 

  ```bash
  whoami
  ```

- get IP

  `pkg install net-tools`

  ```bash
  ifconfig
  ```

- run ssh in phone

  ```bash
  sshd
  ```

- set password

  ```bash
  passwd
  ```
  AND

  ```bash
  chmode 600 ~/.ssh/authorized_keys
  ```

- close ssh

  ```bash
  exit
  ```

---

## Z-shell

- git alias z-shell

  `grafical log`

  ```zsh
  gloga
  ```

## Bash

- `>` : write
- `>>` : append
- `<` : (stdin)

  ```bash
  sort < file.txt
  ```
- `|` : pipe (stdin)

  ```bash
  cat file.txt | sort
  ```
- (stdin) 

  ```bash
  sort file.txt
  ```

- `0` : stdin
- `1` : stdout
- `2` : stderr


- **Bash completion**

 - if bash completion is disable
 
    ```bash
    sudo vim /etc/inputrc
    ```
 
    chane `disable-completion on` to `disable-completion off` or  delete this line.
   
    ```bash
    set disable-completion off
    ```


- **variables**

  - show variables
 
    ```bash
    env
    ```

  - show variables
 
    ```bash
    echo $PWD
    ```

  - define temporary variable
 
    ```bash
    export MYVAR=/home/path
    ```

- **define permanently variable**

  ```bash
  vim ~/.bashrc 
  ```

  Adding variables permanently

  ```bash
  # export SYSTEMD_PAGER=
export MYVARFILE=/home/path
  ```

  apply changes

  ```bash
  source ~/.bashrc
  ```

- **define alias**

  ```bash
  vim ~/.bashrc 
  ```
 
  adding alias command
  
  ```bash
  # User specific aliases and function
alias mydir="cd $MYVAR; ls -aF"
  ```

- **bash history**

  show all commands 

  ```bash
  vim ~/.bash_history
  ```

  run commands from history (for example run command 6)

  ```bash
  !6
  ```

  clear history

  ```bash
  history -c
history -w
  ```

- **bash logout**

  write stdout of  a command or function log whene logout bash (for example)

  append stdout of `ls -l` command into `new_log` file

  ```bash
  vim ~/.bash_logout
  ```

  ```bash
  # ~/.bash_logout
ls -l >> new_log
  ```

- **bash profile**

  similar to  bashrc

### Bash Scripting

- shebang

  ```sh
  #!/bin/bash
  ```

- bash scripting check writeable

  ```bash
  ls -l
  ```

  - if not writeable
 
    ```bash
    chmode +x bash_script.sh
    ```

- run bash script

  ```bash
  ./bash_script.sh
  ```

- comparison operator

  - `eq`: equal
  - `gt`: greater than
  - `ge`: greater equal
  - `lt`: less than
  - `le`: less equal

- get input number and store on VAR

  ```sh
  echo -n "enter number: "
read VAR
  ```

- condition

  ```sh
  if [[ condition ]]
then
    commands
elif [[ condition  ]]
then
    commands
else
    commands
fi
  ```



