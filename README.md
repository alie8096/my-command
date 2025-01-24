# my-command

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

## Linux

To mount external hard

```bash
sudo mount -t ntfs-3g /dev/sdb2 /mnt
```


