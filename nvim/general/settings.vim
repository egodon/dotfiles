set t_Co=256                                                                                      
set encoding=UTF-8                                                                                
set termguicolors                                                                                 
set nowrap                                                                                        
syntax on                                                                                         

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_disable_italic_comment = 1
colorscheme tokyonight


" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
" Add colors to jsx
hi tsxTagName guifg=#E06C75
hi tsxCloseTagName guifg=#E06C75
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575
hi tsxAttrib guifg=#F8BD7F cterm=italic
hi ReactProps guifg=#D19A66

" Setup Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" General settings
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set expandtab " expand tabs by default (overloadable per file type)
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=2 " number of spaces to use for autoindenting
set colorcolumn=90

set smartindent
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop

set softtabstop=2 " when hitting <BS>, pretend like a tab is removed, even if spaces
set tabstop=2 " tabs are n spaces

set number "turn hybrid line numbers on

" Hightlight the current line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234