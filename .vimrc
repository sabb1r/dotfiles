" ============================================================================
" UNIVERSAL PYTHON CONFIGURATION (Vim & Neovim)
" ============================================================================

" --- 1. Core Interface Settings ---
syntax on                   " Enable syntax highlighting
set number                  " Show line numbers
set relativenumber          " Easier vertical jumping (e.g., 5j to move 5 lines)
set mouse=a                 " Enable mouse support for scrolling/selecting
set cursorline              " Visual cue for current line
set showmatch               " Show matching brackets/parentheses
set background=dark         " Adjust colors for dark terminals
colorscheme desert          " Use the built-in, eye-friendly 'desert' theme

" --- Sync Terminal and GUI colors
if has('termguicolors')
    set termguicolors
endif

" --- Ensure 256 color support in terminal
if !has('gui_running')
    set t_Co=256
endif


" --- 2. Search Logic ---
set ignorecase              " Search is case-insensitive...
set smartcase               " ...until you use a capital letter
set incsearch               " Highlight matches as you type
set hlsearch                " Keep highlights on (use :noh to clear)

" --- 3. Python / PEP 8 Indentation ---
filetype plugin indent on   " Load file-specific indentation
set expandtab               " Convert tabs to spaces
set shiftwidth=4            " One indent level = 4 spaces
set tabstop=4               " Tab character width = 4 spaces
set softtabstop=4           " Makes backspace delete 4 spaces
set autoindent              " New lines inherit the previous indent level

" --- 4. Python Specific Tweaks ---
let python_highlight_all = 1 " Enhanced syntax highlighting for Python

" --- 5. Custom Shortcuts ---
" Press F5 to save and run the current Python script
nnoremap <F5> :w<CR>:!python3 %<CR>

" Pressing <Space> will clear search highlights
nnoremap <leader><space> :noh<cr>

" ============================================================================
" END OF FILE
" ============================================================================
