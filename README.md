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

## Zellij

| Activation | Command |
| --- | --- |
| Zoomout window | ``Ctrl + b + z``   |
| Vertical division window | ``Ctrl + b + %`` |
| Horizontal division window | ``Ctrl + b + "`` |
| Close a window | ``Ctrl + p + x`` |
| Switching bitween windows | ``Ctrl + b + ⭠ ⭡ ⭣ ⭢`` |
| Switching bitween windows | ``Alt + ⭠ ⭡ ⭣ ⭢`` |
| Resizing window | ``Ctrl + n + ⭠ ⭡ ⭣ ⭢`` |
| Rename window | ``Ctrl + p + c`` |
| Manager | ``Ctrl + o + w`` |
| Change Horizontal/Vertical windows | ``Ctrl + Space`` |
| Floating window | ``Alt + f`` |
| Resize window | 

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

### Vim spell checker

- Simple

  ```vim
  :set spell
  ```

- Spelling spacial language

  ```vim
  set spelllang=en
  ```

- Persian language spelling

  ```vim
  set spelllang=fa
  ```

- Shortcut to navigate to misspellings

  | Shortcut | Description |
  | --- | --- |
  | ***[s*** | Go to next misspelled |
  | ***]s*** | Go to previous misspelled word |
  | ***z=*** | Show alternative suggestions |
  | ***zg*** | Add word to personal directory |
  | ***zw*** | Mark word as misspelled

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

- Change last commit

  ```bash
  git add file
git commit --amend -m "new commit message"
  ```


- Git Clean

  - Flags
 
    - `i`: intractive
    - `f`: force
    - `d`: directory
    - `n`: file
    - `x`: ignored files or directories

  - remove file in main path (untracted)
 
    ```bash
    git clean -n
    ```

  - remove directory in main path (untracted)
 
    ```bash
    git clean -d
    ```

- Git Revert

  `git revert` is a Git command that reverses the changes of a specific commit by creating a new commit whithout deleting the history.

  ```bash
  git revert <commit-hash>
  ```

- Git Reset

  `git reset` resets changes to a previous state ans can modify the commit history.

  - **Type of `git reset`**
 
    1. **soft**(`--soft`): Moves `HEAD` to a previous commit, keeping changes staged.

      ```bash
      git reset --soft <commit-hash>
      ```

    2. **Mixed**(`--mixed`) -> *default*: Resets `HEAD` and the staging area but keeps working directory changes.

      ```bash
      git reset --mixed <commit-hash>
      ```

    3. **Hard**(`--hard`): Deletes all changes from history, staging area, and working directory( *irreversible!*).

      ```bash
      git reset --hard <commit-hash>
      ```

- Git rm

  `git rm` removes files from the working directory and staging area. (Use `git commit` to apply the changes permanently)

  **Usage**

  - Remove a file and stage the deletition.

    ```bash
    git rm <file>
    ```

  - Remove from Git but keep it locally.

    ```bash
    git rm --cached <file>
    ```

- Git Remote

  - **SSH**

    - Generate ssh key

      ```bash
      ssh-keygen
      ```

    > **Don't share `id_rsa`**
    >
    > **You can just share `id_rsa.pub`

    - Add SSH in locally system

      ```bash
      ssh-add path/.ssh/id_rsa
      ```

    - If you encounter an error while adding SSH, run blow command and follow  description.

      ```bash
      ssh-agent -s
      ```

    > **To fun** : show keys of a persen added to github or gitlab with bellow trick
    >
    > https://github.com/username.keys
    >
    > **DON'T SAVE Public keys from a person** because you give him access to the system.


  - Show remote

    ```bash
    git remote
    ```

  - Set remote

    ```bash
    git remote add origin git@github.com:username/repo.git
    ```

- Git Push

  - Push changes after seting up the remote when repository doesn't have this branch (Set up strem)

    ```bash
    git push -u origin new_branch
    ```
 
- Git Checkout

  - Create Branch

    ```bash
    git checkout -b branch_name
    ```

  - Change branch

    ```bash
    git chekout branch
    ```

- Git Rebase
  - An interactive way to modify commit history, allowing you to edit, reoeder, squash, or delet commits.

    | Command | Short Command | Description |
    | --- | --- | --- |
    | `pick` | `p` | Keep the commit unchanged in history(default). |
    | `reword` | `r` |  Allows you to modify the commit messge. |
    | `edit` | `e` | Pauses the rebase process so you can modify the commit (1.g., edit files of add changes). |
    | `squash` | `s` | Merge this commit with the previous commit message unchanged. |
    | `fixup` | `f` |  Similar to `squash`, but it keeps the previous commit message unchanged. |
    | `drop` | `d` | Removes the commit from history. |
    | `exec` | `x` | Runs a shell command during the rebase process. |


    ```bash
    git rebase -i HEAD~n
    ```

- Git Merge

  - Merge two branch (branch1 with main)

    ```bash
    git checkout main
git merge branch1
    ```


- Git Branch

  - Create branch

    ```bash
    git switch -C branch_name
    ```

    OR

    ```bash
    git checkout -b branch_name
    ```

  - To check status of the commits

    ```bash
    git branch --verbose
    ```

  - Show list of branches

    ```bash
    git branch
    ```

  - Remeove branch

    ```bash
    git branch -d branch_name
    ```

- Git Cherry Pick

  - `cherry-pick`: Select specific commit from another branch and applies them to the current branch.

    ```bash
    git cherry-pick <commit-hash>
    ```

---

## Linux

- To show information of sytem

  > `w` is the shortest linux command.

  ```bash
  w
  ```

  > `who` is similar to `w` command but shorter.

- Use ``Ctrl + r`` to search in the history of last commands.

- To find current path

  ```bash
  pwd
  ```

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

### User Management

#### **Users**

- Adding new user

  ```bash
  sudo useradd <username>
  ```

- Set password to new user

  ```bash
  sudo passwd <username>
  ```
- Go to new user

  ```bash
  su - <username>
  ```

- Logout from user

  ```bash
  exit
  ```

- Delete user

  ```bash
  ps -u <username>
  ```

  ```bash
  sudo kill -9 <PID>
sudo pkill -u <username>
sudo killall -u <username>
  ```

  ```bash
  sudo userdel -r <username>
  ```

- User defaults

  ```bash
  useradd -D
  ```

  > GROUP=100
  >
  > HOME=/home
  >
  > INACTIVE=-1
  >
  > EXPIRE=
  >
  > SHELL=/bin/sh
  >
  > SKEL=/etc/skel
  >
  > CREATE_MAIL_SPOOL=no
  >
  > LOG_INIT=yes

- Show and edit default useradd config

  ```bash
  sudo vim /etc/default/useradd
  ```

- Show and edit default configs

  ```bash
  sudo vim /etc/login.defs
  ```


#### **Groups**

- Show all groups

  ```bash
  groups
  ```

- Add new groups

  ```bash
  sudo groupadd <group_name>
  ```

- Changing the group of user

  ```bash
  sudo usermod -G <new-group> <username>
  ```

- Append the user to the supplemental GROUS 

  ```bash
  sudo usermod -aG <new-group> <username>
  ```

- Removing group from user

  ```bash
  sudo groupdel <group-name>
  ```


#### **Login**

- Show logins

  ```bash
  loginctl
  ```

- Change Age (change time of stay in system)

  ```bash
  chage <username>
  ```

  > Can change:
  >
  > Minimum Password Age [0]:
  >
  > Maximum Password Age [99999]: 
  >
  > Last Password Change (YYYY-MM-DD) [2025-04-30]:
  >
  > Password Expiration Warning [7]:
  >
  > Password Inactive [-1]:
  >
  > Acount Expiration Date (YYYY-MM-DD) [-1]:


#### **Password Manager**

- Unlocking the password of an user

  ```bash
  sudo passwd -uf <username>
  ```

- Locking the password af an user

  ```bash
  sudo passwd -l <username>
  ```

- Changing the password with stdin

  ```bash
  echo "password" | passwd --stdin <username>
  ```

### Permission Management

- Show status of permission of files

  ```bash
  ls -l
  ```

- File and Ownership Permissions Structure

Every file and directory in Linux have three kinds of owers:

  - **User (u)**: The creator of the file becomes its owner. You can change the ownership later.
  - **Group (g)**: Users are part of specific groups.Managing users in a multi-user environment involves creating separate groups(e.g., dev team, QA Team, sysadmin team). Group membership simplifies permission management.
  - **Other (o)**: This group includes all users on the system, even if you're the sole user. Everyone with access to the system belongs to this group.
  - **All (a)**: All kinds (i.e., User (u), Group (g), and Other (o))

Each file and directory have three permissions for all three owner types:

  - **Files**
    | **Mode** | **Abbrevation** | **Absolute Mode** | **Description** |
    | --- | --- | --- | --- |
    | **Read** | ***r*** | 4 | Allow viewing or copying file contents. | 
    | **Write** | ***w*** | 2 | Permits modifying file content. |
    | **Execution** | ***x*** | 1 | Enablesrunning executable files (scripts or programs). |

  - **Directory**

    | **Mode** | **Abbrevation** | **Absolute Mode** | **Description** |
    | --- | --- | --- | --- |
    | **Read** | ***r*** | 4 | List files and copies them from the directory. | 
    | **Write** | ***w*** | 2 | Adds or deletes files (requires execute permission). |
    | **Execution** | ***x*** | 1 | Allows entering the directory. |

File Permissions have two modes. An absoute mode and symbolic mode. The modes detail the type of enteries required for permissions to take effect.

  - **Symbolic Mode**

    - Symbolic mode allows you to modify permissions based on their current state.

      - **+**: Adds permissions.
      - **-**: Removes permissions.
      - **=**: Sets permissions explicitly.

  - **Absolute Mode**

    - In absolute mode, you explicitly specify the permissions using numeric value (octal notation). These values represent the combination of *read*, *write*, and *execute* permissions for the *owner*, *group*, and *others*.

      | **Numeric Value** | **Mode** | **Description** |
      | --- | --- | --- |
      | **0** | ***---*** | No permissions |
      | **1** | ***--x*** | Execute only |
      | **2** | ***-w-*** | Write only |
      | **3** | ***-wx*** | Write and execute |
      | **4** | ***r--*** | Read only |
      | **5** | ***r-x*** | Read and execute |
      | **6** | ***rw-*** | Read and write |
      | **7** | ***rwx*** | Read, write, and execute|


  - **File Types**

    | Character | File Type | How to Create | Description |
    | --- | --- | --- | --- |
    | **-** | Regular file | Any program that writes a file | Common files like text, code, and binaries |
    | **b** | Block special file | `mknod` | Storage devises like disks |
    | **c** | Character scecial file | `mknod` | Devices that read/write character data (e.g., keyboard) |
    | **d** | Directory | `mkdir` | A folder containing files and subdirectories |
    | **l** | Symbolic link | `ln -s` | A reference to another file or directory |
    | **p** | Named pipe | `mkfifo` | FIFO queue for inter-process communication |
    | **s** | Socket | `nc -U` | Network communication between processes |
    | **D** | Door | Created by some servers | Specific to Solaris/OpenIndiana systems |


  - **Permission Placement**

      1. Type
      2. User
      3. Group
      4. Other

      [Permissions](./Images/Permissions.png)


  ```bash
  chmod ugo+rwx
  ```

  ```bash
  chmod 770 <file/directory-name>
  ```
  > `chmod 770` =>
  >
  > user: 7 = 4 + 2 + 1 
  >
  > group: 7 = 4 + 2 + 1
  >
  > other: 0 = None
  >
  > -> rwxrwx---


#### **Ownership**

- Change onwnership (e.g., change onwnership of a directory to root )

  ```bash
  chown root <directory-name>
  ```

- Change group (e.g., change group of a directory)

  ```bash
  chgrp <group-name> <directory-name>
  ```

- Change ownership and group for a directory

  ```bash
  chown <ownership-name>:<group-name> <directory-name>
  ```

#### **Spacial Permissions**

| Numeric Value | Mode | Description |
| --- | --- | --- |
| **4XXX** | **SUID** (Set User ID) | Executes the file with the owner's privileges instead of the user's. |
| **2XXX** | **SGID** (Set Group ID) | Executes the file with the group's privileges or inhereits the directory's group. |
| **1XXX** | **Stick Bit** | Prevents users from deleting file they don't own in shared directories. |

- **SUID (4XXX)**: Runs the file eith the owner's permissions (e.g., `passwd`).

  - **Set**:

    ```bash
    chmod u+s <file>
    ```

    OR

    ```bash
    chmod 4755 <file>
    ```

  - **Display**: `rwsr-xr-x`

- **SGID (2XXX)**: Runs the file with the group's permission; new files in directories inherit the group.

  - **Set**: 

    ```bash
    chmod g+s <dir>
    ```

    OR

    ```bash
    shmod 2755 <dir>
    ```

  - **Display (file/dir)**: `rwxr-sr-x`

- **Sticky Bit (1XXX)**: Restricts file delting in shared directories (`/temp`).

  - **Set**: 

    ```bash
    chmod +t <dir>
    ```

    OR

    ```bash
    chmod 1777 <dir>
    ```

  - **Display**: `rwxrwxrwt`


- Examples

| **Permission** | **Command** | **Effect** |
| --- | --- | --- |
| ***`-rwsr-xr-x`*** | **`chmod 4755 <file>`** | Enables SUID |
| ***`-rwxr-sr-x`*** | **`chmod 2755 <file>`** | Enables SGID |
| ***`drwsrwsr-x`*** | **`chmod 4775 <file>`** | Enables SGID on a directory|
| ***`drwxrwxrwt`*** | **`chmod 1777 <file>`** | Enables Sricky Bit |


#### **Umask (User Mask)**

`umask` defines the default permissions for newly created files and directories by subtractingits value from the maximum possible permissions.

- **Default Behavior**:

  - **Files**: Maximum permission is ***666*** (`rw-rw-rw-`), but they **never** get execute (`x`) by default.
  - **Directories**: Maximum permission is ***777*** (`rwxrwxrwx`).

- **Example**:

If `umask` is `022`:

  - **Files**: `666 - 022 = 644` → *`rw-r--r--`*
  - **Directories**: `777 - 022 = 755` → *`rwxr-xr-x`*

- **Check & Set umask**:

  - Check current umask:

    ```bash
    umask
    ```

  - Set umask (e.g., `027`):

    ```bash
    umask 027
    ```

    - Files → `640` ( *`rw-r-----`* )
    - Directories → `750` ( *`rwxr-x---`* )


> To make changes persistent, add `umask` to `~/.bashrc` or `/etc/profile`.

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

  write stdout of  a command or function log when logout bash (for example)

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

## Bash Scripting

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

### Comment line in bash scripting

- Single line

  ```sh
  # line
  ```

- Multi line

  ```sh
  : "
  line1
  line2
  line3
  ...
  end line
  "
  ```

- Printf formatting

  | Specifier | Description |
  | --- | --- |
  | %% | Prints "%" symbol |
  | %c | Takes arguments as a single character |
  | %e & %E | Take argument in floating-point number and prints in exponential notation, %e for lower case letter and %E for capital letter |
  | %g & %G | Take argument in floating-point number and prints in normal or exponential notation |
  | %f | Takes argument as floting number |
  | %d | Takes arguments as signed integers |
  |%u | Takes arguments as unsigned integers |
  | %o | Takes argument as an unsigned octal number |
  | %x & %X | Takes arguments as unsigned hexadecimal integers |


### Get Input

- Get input number and store on VAR

  ```sh
  echo -n "enter number: "
read VAR
  ```

- Get string input

  ```sh
  echo "enter name: "
read name
  ```

### Condition

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

### For Loop

- Structure

  ```sh
  for var in item1 item2 item3
do
  commands
done
  ```

- For in the range

  ```sh
  for num in {start..end..step}
do
  commands
done
  ```

#### Brake Loop

- Continue

  ```sh
  for i in {1..5};do
  if [[ $i == 2 ]];then
    continue
  fi
  
  echo "Number: $i"
done
  ```

- Break

  ```sh
  for i in {1..5};do
  if [[ $i == 2 ]];then
    break
  fi
  
  echo "Number: $i"
done
  ```

### While Loop

- Structure

  ```sh
  i=0

  while [ Loop break condition ]
do
  commands
  (( i++ ))
done
  ```

- Infinite Loop

  ```sh
  while :
do
  commands

  loop_break_condition
done
  ```

### Read File

```sh
file=path/file

while read -r line
do
  echo $line
done
```

### Arguments

- Get Arguments

  ```sh
  args=("$@")

echo ${args[0]} ${args[1]}
  ```

- All Arguments

  ```sh
  echo $@
  ```

- Number of Arguments

  ```sh
  echo $#
  ```

### Array

- Make Array

  ```sh
  array=("item1" "item2" "item3" "item4")
  ```

- Getting the data from array

  > Use **`@`** to get all elements
  >
  > Use **`!`** to get index of elements
  >
  > Use **`#`** to get the number of elements


  ```sh
  echo "${array[@]}"
  echo "${!array[@]}"
  echo "${#array[@]}"
  ```

### Function

- Structure

  ```sh
  function_name() {
    commands
}

function_name
  ```

- Return value

  ```sh
  func_name() {
  echo "value"
  return 12
}

func_name
  ```

  output

  ```bash
  value
  ```

  > Use $? to get numeric returned vale

  ```sh
  func_name() {
  echo "value"
  return 12
}

func_name
echo $?
  ```

  output

  ```bash
  value
  12
  ```

- Get value from function

  ```sh
  func_name() {
  local var="Linux"
  echo $var
}

variable="$(func_name)"

echo "$variable"
  ```

- Send argumanet to function

  ```sh
  func() {
  echo "hello, $1"
}

func "name"
  ```

- Use argv as function argument

  ```sh
  func() {
  echo "hello, $1"
}

func $1
  ```

  output

  ```bash
  app_name.sh ali
hello, ali
  ```


## Database

### Mongo DB

1. Install MongoDB
2. Start

  ```bash
  sudo systemctl start mongod
  ```

3. Enable

  ```bash
  sudo systemctl enable mongod
  ```

4. Run & Test

  ```bash
  mongosh
  ```

5. Exit

  ```mongodb
  exit
  ```

- Show all database

  ```mongodb
  show dbs
  ```

- Create or Connect Database

  ```mongodb
  use my_database
  ```

- Create Collecation

  ```mongodb
  db.createCollection("collection_name")
  ```

- Show Collections

  ```mongodb
  show collections
  ```

- Current Database

  ```mongodb
  db
  ```

- Remove Database

  ```mongodb
  db.dropDatabase()
  ```

- Remove Collection

  ```mongodb
  db.collection_name.drop()
  ```

- Add Data to collection

  ```mongodb
  db.collection_name.insert({
  name: 'ali',
  age: 23,
  salary: 5000
})
  ```

- Show all documents of a collection

  ```mongodb
  db.collection_name.find({})
  ```

  OR

  ```mongodb
  db.collection_name.find({}).pretty()
  ```

- Show all documents in a collecation that contain condition

  ```mongodb
  db.collection_name.find({name: "value"})
  ```

- Show one field in all document from collecation

  ```mongodb
  db.collection_name.find({condition}, age:1, _id:0)
  ```

- Show document with limited results 

  ```mongodb
  db.collection_name.find({}).limit(4)
  ```

- Show documents and ignored numbers of first result

  ```mongodb
  db.collection_name.find({}).skip(2)
  ```

- Show documents with multi conditions

  - AND

    ```mongodb
    db.collection_name.find({age: 25, nmae: "ali"})
    ```

  - OR

    ```mongodb
    db.collection_name.find($or[{age: 30}, {name: "mahdi"}])
    ```

  - Greater Than or Less Than

    - `$gt`  -> greater than
    - `$lt`  -> less than
    - `$gte` -> greater than equal
    - `$lte` -> less than equal
    - `$ne`  -> not equal

    ```mongodb
    db.collection_name.find({age: {$gt: 15}})
    ```

- Update document

  ```mongodb
  db.collection_name.update({condition}, {$set:{age: 43}})
  ```

- Remove Objects contains similar values

  ```mongodb
  db.collection_name.remove({column:value})
  ```

- Remove spacial objects

  ```mongodb
  db.collection_name.remove({_id: ObjectId("shaID")})
  ```
## Jupyter Notebook

- Write and create file by jupyter

  ```ipynb
  %%writefile file.txt
this is first line from  content to write into the file
this is second line for writing into file.
...
this is last line to write into the file.
  ```

## Python

- Precendence & Associativity of Arithmetic Operators

   | Periority | Operators | Associativity |
   | --- | --- | --- |
   | 1 | () | Left to Right |
   | 2 | ** | Right to Left |
   | 3 | +x and -x | Left to Right |
   | 4 | *, /, //, and % | Left to Right |
   | 5 | + and - | Left to Right |

- **Tips**

    - The output of division in Python is decimal number.

      ```py
      30 / 2  
>>> 15.0
      ```

    - Write large numbers in Python for convenience with underescores

    ```py
    1_000_000_000
>>> 1000000000
    ```

- Get and remove last value from list

  ```py
  lst = ["Ali", "Mohammad", "Mahdi"]
name1 = lst.pop()

print(name1)
>>> Mahdi

print(name1 is lst)
>>> False

print(lst)
>>> ['Ali', 'Mohammad']
  ```

- Infinite Loop

  ```py
  while True:
    if 2 < 3:
        print("runing")
    break
  ```

  OR

  ```py
  while 1:
    if 2 < 3:
        print("runing")
    break
  ```


### Numpy

- Get All rows and columns from a matrix

  ```py
  import numpy as np

arr = np.array([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
])

print(arr[...])

>>> array([[1, 2, 3],
       [4, 5, 6],
       [7, 8, 9]])
  ```


## Windows

- Write text into a file by `CMD`

    > **`HINT`**: Use `Ctrl + z` to end writing and copying into the file.

  ```bat
  copy con file.txt
This is my text for copying to file.
this is seconde line for copying to file.
...
...
...
this is a last line to copeing into file.
^Z
  ```

- Read content a file in `CMD`

  ```bat
  copy file.txt con
  ```

  output

  ```bat
  This is my text for copying to file.
this is seconde line for copying to file.
...
...
...
this is a last line to copeing into file.
  ```

- Delet file by `CMD`

  ```bat
  del file.txt
  ```
