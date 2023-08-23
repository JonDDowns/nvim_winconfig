lua require('plugins')

" Set leader and tab length
let mapleader = " "
set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set splitbelow
set shell=C:\\Jon\\PowerShell-7.3.5-win-x64\\pwsh.exe
set shellxquote=
let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
let &shellquote   = ''
let &shellpipe    = '| Out-File -Encoding UTF8 %s'
let &shellredir   = '| Out-File -Encoding UTF8 %s'
"
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Set color scheme
colorscheme dracula
let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }
