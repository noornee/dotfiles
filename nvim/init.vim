:set number
:set relativenumber
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar'

call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
