"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.local/share/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.local/share/')
  call dein#begin('~/.local/share/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.local/share/repos/github.com/Shougo/dein.vim')

  " Additional plugins
  call dein#add('autozimu/LanguageClient-neovim', {
    \ 'rev': 'next',
    \ 'build': 'bash install.sh',
    \ })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" begin languageclient config
set hidden

let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" end   languageclient config
