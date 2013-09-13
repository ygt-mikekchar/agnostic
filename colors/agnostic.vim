" This scheme allows people to customize their colours in
" their terminals.  The colours should follow these rules.
"
" Background and Foreground Colours
"    0  - Normal Background Colour
"    15 - Normal Foreground Colour (i.e. text)
"
"    Colours 0 - 7  are background colours
"    Colours 8 - 17 are foreground colours
"
" Default Colour Hues are as follows:
"    For dark themes:
"     BG  FG
"      0,  8: Black
"      7, 15: White
"
"    For light themes:
"     BG  FG 
"      0,  8: White
"      7, 15: Black
"
"    For all themes:
"     BG  FG 
"      1,  9: Red
"      2, 10: Green
"      3, 11: Yellow
"      4, 12: Blue
"      5, 13: Magenta
"      6, 14: Cyan

" Colour mixing:
"   The following background/foreground combinations
"   are not allowed (because they clash in the default
"   colour hues):
"
"   - Any background with it's corresponding foreground
"     (e.g., 0 and 8, 1 and 9, 2 and 10, etc)
"   - And combination of primary colour mixes
"     - Thus you can't mix Blue with Green or Red,
"       or Cyan with Magenta or Yellow, etc.
"
" Font effects:
"   - Note that you should not mix effects because it is not
"     supported on most terminals.  So this means that
"     there should only be one thing after cterm=
"
"   - There are no italic effects because italics is not
"     supported on most terminals. Do not use cterm=italics
"
"   - To make some things stand out, occasionally it is useful
"     to put a background colour in the foreground and a foreground
"     colour in the background.  In this case put the foreground
"     colour in ctermfg and the background colour in ctermbg as
"     normal.  Then use cterm=reverse.  Note that this means you
"     can't use bold.

" Standard highlight groups

highlight Normal       ctermbg=0 ctermfg=15 cterm=none
"        *Normal          any text

highlight Comment                ctermfg=9  cterm=bold
"        *Comment         like this line

highlight Constant               ctermfg=15 cterm=bold
"        *Constant        constant expressions
"         Character       'c', '\n'
"         Number          234, 0xff
"         Boolean         TRUE, false
"         Float           2.3e10

highlight Identifier             ctermfg=12 cterm=none
"        *Identifier      variables, etc

highlight Statement              ctermfg=13 cterm=bold
"        *Statement       any statement
"         Conditional     if, then, else, endif, switch, etc.
"         Repeat          for, do, while, etc.
"         Label           case, default, etc.
"         Operator        "sizeof", "+", "*", etc.
"         Keyword         any other keyword
"         Exception       try, catch, throw

highlight PreProc                ctermfg=10 cterm=bold
"        *PreProc         generic Preprocessor
"         Include         preprocessor #include
"         Define          preprocessor #define
"         Macro           same as Define
"         PreCondit       preprocessor #if, #else, #endif, etc.

highlight Type                   ctermfg=12 cterm=bold
"        *Type            int, long, char, etc.
"         StorageClass    static, register, volatile, etc.
"         Structure       struct, union, enum, etc.
"         Typedef         A typedef

highlight Special                ctermfg=9  cterm=bold
"        *Special         any special symbol
"         SpecialChar     special character in a constant
"         Tag             you can use CTRL-] on this
"         SpecialComment  special things inside a comment
"         Debug           debugging statements

highlight Underlined             ctermfg=12 cterm=underline
"        *Underlined      text that stands out, HTML links

highlight Error        ctermbg=3 ctermfg=9  cterm=none
"        *Error           any erroneous construct

highlight Todo         ctermbg=3 ctermfg=9  cterm=reverse
"        *Todo            anything that needs extra attention; mostly the
"                         keywords TODO FIXME and XXX
"

"----------------------------------------
" Special highlights

highlight String                 ctermfg=10 cterm=none
"        *String       "Things inside quotes" 'like these'
highlight Function               ctermfg=13 cterm=bold
"        *Function     the "foo" part of "def foo()"
highlight Delimiter              ctermfg=12 cterm=none
"        *Delimiter    Delimiters for things, like "
highlight Visual       ctermbg=3 ctermfg=15 cterm=none
"        *Visual       Visual mode appearance
highlight Search       ctermbg=5 ctermfg=15 cterm=none
"        *Search       Things you have searched for
highlight IncSearch    ctermbg=2 ctermfg=15 cterm=none
"        *Search       Things you have searched for

" Status line

highlight StatusLine   ctermbg=6 ctermfg=15 cterm=bold
"        *StatusLine   The status line for the active window
highlight StatusLineNC ctermbg=0 ctermfg=12 cterm=reverse
"        *StatusLineNC The status line for the non active window
highlight LineNr       ctermbg=0 ctermfg=12 cterm=reverse
"        *LineNr       Line numbers

" Diff
highlight DiffChange   ctermbg=4 ctermfg=15 cterm=none
highlight DiffText     ctermbg=3 ctermfg=15 cterm=none
highlight DiffAdd      ctermbg=2 ctermfg=15 cterm=none
highlight DiffDelete   ctermbg=1 ctermfg=15 cterm=none

" Folding
highlight Folded       ctermbg=7 ctermfg=8  cterm=none
highlight FoldedColumn ctermbg=7 ctermfg=8  cterm=none

" Ruby Specific

highlight rubyDefine   ctermbg=0 ctermfg=13 cterm=bold
"        *rubyDefine   Ruby def
" TODO Fix having to set the ctermbg here.  It is inheritting 8 from
" somewhere.

" Vim Specific
highlight vimCommand             ctermfg=15 cterm=bold
"        *vimCommand   Vim commands in .vimrc, etc

" Go Specific
highlight goBlock                ctermfg=1  cterm=reverse 
"        *goBlock      Go Blocks

" Syntastic
" Highlighting of errors and warnings that Syntastic flags
" Only supported with some Syntastic checkers
highlight SyntasticErrorLine ctermbg=3 ctermfg=9  cterm=none
highlight SyntasticWarningLine ctermbg=3 ctermfg=9  cterm=reverse

" Markdown
highlight markdownH1 ctermbg=6 ctermfg=15 cterm=bold
highlight markdownH2 ctermbg=6 ctermfg=15 cterm=none
highlight markdownH3 ctermfg=15 cterm=bold
highlight markdownHeadingRule ctermfg=8 cterm=bold
highlight markdownItalic ctermfg=11 cterm=none 
highlight markdownBoldItalic ctermfg=13 cterm=bold 
highlight markdownAutomaticLink ctermfg=12 cterm=none
