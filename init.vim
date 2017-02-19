" set the options of SpaceVim
"let g:spacevim_colorscheme = 'solarized'

" setting layers, load 'lang#java' layer.
call SpaceVim#layers#load('lang#c')
let g:spacevim_enable_ycm = 1
let g:spacevim_windows_leader = 's'

" add custom plugins.
let g:spacevim_custom_plugins = [
 \ ['plasticboy/vim-markdown', {'on_ft' : 'markdown'}],
 \ ['wsdjeg/GitHub.vim'],
 \ ['ryanoasis/vim-devicons']
 \]

let g:spacevim_disabled_plugins        = []

let g:spacevim_unite_leader = "<leader>u"

""
" The colorscheme of SpaceVim, if colorscheme groups are installed.
let g:spacevim_colorscheme             = 'gruvbox'

let g:spacevim_realtime_leader_guide   = 1

""
" The default file manager of SpaceVim.
let g:spacevim_filemanager = 'NERDTree'

""
" The default plugin manager of SpaceVim, dein, neobundle or vim-plug. by
" default it is dein.
let g:spacevim_plugin_manager          = 'dein'  " neobundle or dein or vim-plug

 " custom mappings:
 nnoremap - :VimFilerBufferDir<cr>
nnoremap <space>w :w<cr>
nnoremap <space>q :q<cr>

map <A-b> :CtrlPBuffer<cr>
map <A-m> :CtrlPBufTag<cr>

" Buffers

" {{{ Space mappings ==

" Better windows navigation
nmap <space>H <c-w>H
nmap <space>L <c-w>L
nmap <space>J <c-w>J
nmap <space>K <c-w>K
nmap <space>h <c-w>h
nmap <space>l <c-w>l
nmap <space>j <c-w>j
nmap <space>k <c-w>k

" Openbrowser maps
"nmap <leader>qu <Plug>(openbrowser-search)
nmap <space>sg :OpenBrowserSearch -google <c-r>=expand("<cword>")<cr><cr>
nmap <space>su :OpenBrowserSearch -unity3d <c-r>=expand("<cword>")<cr><cr>
nmap <space>sr :OpenBrowserSearch -rust <c-r><c-w><cr>
nmap <space>ag :OpenBrowserSearch -google 
nmap <space>au :OpenBrowserSearch -unity3d 
nmap <space>ar :OpenBrowserSearch -rust 

nmap <silent> <space> <NOP>
nmap <space><space>  :

" When entering command, press %% to quickly insert current path
cmap %% <C-R>=expand('%:h').'/'<cr>

" Tab in normal mode is useless - use it to %
nnoremap <Tab> %
vnoremap <Tab> %

" == Ack ===========
nnoremap <leader>a :Ack<space>

" == Fugitive =======
noremap <leader>gd :Gdiff<CR>
noremap <leader>gc :Gcommit<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gw :Gwrite<CR>
noremap <leader>gb :Gblame<CR>

set inccommand=split
