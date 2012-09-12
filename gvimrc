" Include Pathogen {
  call pathogen#runtime_append_all_bundles()
  call pathogen#helptags()
"}


" Turn on Omni Completion {
  filetype plugin on
  set ofu=syntaxcomplete#Complete
"}


" Solarized Colorscheme for Vim {
  syntax enable
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
  let g:solarized_contrast="high"
  let g:solarized_visibility="high"
  set background=dark
  colorscheme solarized
"}


" Map NERDTree and Tagbar keys, Tagbar right side {
  nnoremap <silent> <F2> :NERDTreeToggle<CR>
  nmap <F3> :TagbarToggle<CR>
" }


" Enabling Ruby Extensions {
  set nocompatible      " We're running Vim, not Vi!
  syntax on             " Enable syntax highlighting
  filetype on           " Enable filetype detection
  filetype indent on    " Enable filetype-specific indenting
  filetype plugin on    " Enable filetype-specific plugins
" }


" Tab settings {
  set expandtab " expand tabs to spaces
  set shiftwidth=2 " number of spaces to use with autoindent
  set smarttab " tab and backspace are smart
  set softtabstop=2 " bumber of spaces used by expandtab
  set tabstop=2 " size of a real tab character
  set autoindent " indent at the same level of the previous line
" }


" Highlight extra line spacing on end of lines {
  highlight ExtraWhitespace ctermbg=blue guibg=blue
  match ExtraWhitespace /\s\+$/
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()
" }


" Search options {
  set ignorecase " case insensitve searching by default
  set smartcase " do case sensitive searches when caps are present
  set incsearch " seach for text as you enter it
" }


" UI settings {

    syntax on " enable syntax highlighting

    set cmdheight=2 " command line two lines high
    set laststatus=2 " always show status line
    set lazyredraw " don't redraw when don't have to
    set linebreak " smarter wordwrap
    set more " listings pause when the whole screen is filled
    set nowrap " wordwrap turned off
    set number " turn on line numbers
    set report=0 " always report changes
    set ruler " always show current position in file
    set scrolloff=10 " always keep 10 lines above and below cursor
    set showcmd " show partial command in the last line of the screen
    set showfulltag " show full completion tags
    set showmode " show mode on last line of the screen
    set showtabline=0 " don't use tabs
    set sidescrolloff=10 " always keep 10 lines to the left and right of cursor

" status line
    if has('statusline')
        function! SetStatusLineStyle()
            let &stl="%f %y " .
                        \"%([%R%M]%)" .
                        \"%#StatusLineNC#%{&ff=='unix'?'':&ff.'\ format'}%*" .
                        \"%{'$'[!&list]}" .
                        \"%{'~'[&pm=='']}" .
                        \"%=" .
                        \"#%n %l/%L,%c%V " .
                        \""
        endfunc
        call SetStatusLineStyle()
    endif
"}

" vim-css-color {
  let g:cssColorVimDoNotMessMyUpdatetime = 1
"}
