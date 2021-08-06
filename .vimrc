"""""
" tab to be 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
"""""


"""""
" display typed keys
set showcmd

" display line numbers
set number

" always display filename on the bottom, even for a single screen
set laststatus=2

" show tab complete options on statusbar
set wildmenu

" show colorcolumn
set colorcolumn=100

" Use new regular expression engine
set re=0
"""""


"""""
" highlight search terms
set hlsearch

" incremental search
set incsearch

" case insensitive search unless the search has capital letters
set ignorecase
set smartcase
"""""


"""""
" Use spacebar as leader
let mapleader = "\<Space>"

" leader + w to save
nnoremap <Leader>w :w<CR>
"""""


"""""
" Tabs

"Ctrl T to create a new tab
nnoremap <C-t> :tabnew<Space>
inoremap <C-t> <Esc>:tabnew<Space>

" leader + number to go to tab number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
"""""


"""""
" .vim folder

" Swp files on a single dir
" remember to crate the dir first
" mkdir -p ~/.vim/tmp
set directory=$HOME/.vim/tmp//

" persistent undo
set undofile
set undodir=~/.vim/undo
"""""


"""""
" Deno / Typescript

" leader + f to format with deno fmt
" see https://stackoverflow.com/a/954639 breaking down...
"   mz       = set cursor position to mark 'z'
"   :%!deno fmt -<cr> = comand to format the whole buffer
"   `z       = go back to position 'z'
nnoremap <leader>f mz:%!deno fmt -<cr>`z





"====================================================================
" Plugins

" Vim8 has built-in plugin support, so no need for plugin managers
" enabled plugins should be put on ~/.vim/pack/my_plugins/start
"             and disabled ones on ~/.vim/pack/my_plugins/opt 
" 
" see:  https://shapeshed.com/vim-packages/

" vim-colors-xcode
" 'arzg/vim-colors-xcode'  = dark theme
set termguicolors

" vim-prettier
" prettier/vim-prettier = javascript code formatter
let g:prettier#autoformat_config_present = 1

" vim-signify
" 'mhinz/vim-signify.git' = git changes on sign column
let g:signify_sign_add    = '┃'
let g:signify_sign_change = '┃'
let g:signify_sign_delete = '•'
let g:signify_sign_show_count = 0 " Don’t show the number of deleted lines.
set updatetime=100

" vim-vue-plugin
" https://github.com/leafOfTree/vim-vue-plugin
let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['typescript', 'javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 1,
      \'keyword': 1,
      \'foldexpr': 0,
      \'debug': 0,
      \}
let g:vim_vue_plugin_highlight_vue_attr = 1

" vim-yaml
" https://github.com/stephpy/vim-yaml
" no config

" yats.vim
" HerringtonDarkholme/yats = Typescript highlight
set re=0


"===================================================================
" Themes

" default theme
autocmd VimEnter * colorscheme xcodedarkhc
" autocmd VimEnter * colorscheme nova

" light theme
" autocmd VimEnter * colo pencil
"set background=light
