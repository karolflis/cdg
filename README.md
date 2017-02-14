# cdgo description

Script was created because usual bash cd command cannot accept arguments
to move e.g. 1, 2 or 3 directories down from your current path.

Consider you are in:
```
$ pwd
/some/very/long/dir/path/like/i/really/mean/it/this/is/gettin/insane
```
If you want to go to `/some/very/long` level, now you can just type:
```
$ cdg 3
$ pwd
 /some/very/long
```
If you want move just 4 directories down to:
 `/some/very/long/dir/path/like/i/really/mean/it` now you can just type:
```
$ cdg -4
$ pwd 
/some/very/long/dir/path/like/i/really/mean/it
```

Lovely.

# Installation

1. Put the script anywhere you want (~/bin/, /usr/local/bin)
2. Alias it to your shell profile script (~/.bashrc, ~/.zshrc etc.) and append this line:
```
alias cdg=" . ~/your_dir/cdg.sh"
```
