 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 NeoBundle 'wombat256.vim'
 NeoBundle 'Puppet-Syntax-Highlighting'
 NeoBundle 'DirDiff.vim'
 NeoBundle 'vim-airline/vim-airline'
 NeoBundle 'vim-airline/vim-airline-themes'
 NeoBundle 'w0rp/ale'
 NeoBundle 'keith/parsec.vim'


 NeoBundleLazy 'rkaneko/groovy.vim',
   \ { 'autoload' : { 'filetypes' : ['groovy'] } }


 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 " color wombat256mod
color wombat256mod
syntax on
set number

set expandtab
set shiftwidth=2
set softtabstop=2

let g:netrw_banner=0
let g:netrw_browse_split=2
let g:netrw_liststyle=3
let g:netrw_winsize=15

let g:airline#extensions#ale#enabled = 1
let g:airline_theme='wombat'
