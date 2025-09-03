" ================================
" Sorbet multi-line sig highlighting
" ================================

" Match `sig do ... end` blocks
syntax region rubySigBlock start=/^\s*sig\s*do\>/ end=/^\s*end/ keepend
" And one-line sigs
syntax match rubySigOneLine /^\s*sig\s*{[^}]*}/

" highlight link rubySigBlock Comment
" highlight link rubySigOneLine Comment

function! ToggleSigHighlight()
  if g:sig_highlight_disabled
    " Enable highlight: restore light gray
    highlight rubySigBlock   ctermfg=252 guifg=#cccccc
    highlight rubySigOneLine ctermfg=252 guifg=#cccccc
    let g:sig_highlight_disabled = 0
  else
    " Disable highlight: make it normal text
    highlight rubySigBlock   ctermfg=NONE guifg=NONE
    highlight rubySigOneLine ctermfg=NONE guifg=NONE
    let g:sig_highlight_disabled = 1
  endif
endfunction

let g:sig_highlight_disabled = 1
call ToggleSigHighlight()
