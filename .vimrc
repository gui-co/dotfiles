" colors
set background=dark
colorscheme solarized

" syntax detection
syntax enable
filetype plugin indent on

" encoding
setlocal encoding=utf-8

" highlight matching parenthesis
set showmatch

" indentation
set tabstop=2
set shiftwidth=2
set expandtab

" swp and backup
set directory=~/.vim/swp
set backup
set backupdir=~/.vim/backup
set writebackup
set backupcopy=yes
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:NetrwIsOpen=0
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

map <silent> <F2> :call ToggleNetrw()<cr>

