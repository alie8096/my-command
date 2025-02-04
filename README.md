# my-command

## Cheatsheets

- [![Vim](Images/vim-icon.svg){width=50px}](https://devhints.io/vim)

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


## Vim

| Description | Command | Description |
| --- | --- | --- |
| Copy mode | ``Ctrl + v`` |  |
| Copy | ``"`` + ``+`` + ``y`` |  |
| Pase | ``"`` + ``+`` + ``p`` |  |

- **replace**

``:[range]s/pattern/replacement/[flags]`` 

  + ***[range]***
    - `%` -> All content
    - `10, 20` -> Line 10-20
  + ***pattern*** -> RegEx
  + ***replacement*** -> text
  + ***[flags]***
    - `g` -> All selected by **pattern**
    - `c` -> Accept for each replace

  * for example: *replace foo inestead of bar on all content*
 
    ```vim
    :%s/bar/foo/g
    ```


## Git

- To clone repository with all branches

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
