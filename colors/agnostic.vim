" This scheme allows people to customize their colours in
" their terminals.  The colours should follow these rules.
"
" Background and Foreground Colours
"    0  - Normal Background Colour
"    15 - Normal Foreground Colour (i.e. text)
"
"    8 - Highlighted Background Colour
"    7 - Highlighted Foreground Colour
"
"    Colours 0 - 6  are background colours
"    Colours 9 - 17 are foreground colours
"
" Default Colour Hues are as follows:
"    For dark themes:
"    Default         Highlighted
"     0: Black, base02      8: Dark Grey, base03
"    15: While, base3       7: Light Grey, base2
"
"    For light themes:
"    Default         Highlighted
"    0: White,       8: Light Grey
"    15: Black,      7: Dark Grey
"
"    For all themes:
"     BG  FG
"      1,  9: Red     red,     orange
"      2, 10: Green   green,   base01
"      3, 11: Yellow  yellow,  base00
"      4, 12: Blue    blue,    base0
"      5, 13: Magenta magenta, violet
"      6, 14: Cyan    cyan,    base1

" Colour mixing:
"   The following background/foreground combinations
"   are not allowed (because they clash in the default
"   colour hues):
"
"   - Any background with it's corresponding foreground
"     (e.g., 1 and 9, 2 and 10, etc)
"   - And combination of primary colour mixes
"     - Thus you can't mix Blue with Green or Red,
"       or Cyan with Magenta or Yellow, etc.
"   - Note that highlighting colours must be mixable
"   (i.e. 0 with 8 and 7 with 15)
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
"
"  - To provide compatibility with Solarized, 8 is a background
"    colour and 7 is a foreground colour.  Thus, if you use colours
"    7 or 8, you must not use bold.

" Standard highlight groups

highlight Normal       ctermbg=0 ctermfg=7 cterm=none
"        *Normal          any text

highlight Comment                ctermfg=12
"        *Comment         like this line

highlight Constant               ctermfg=14 cterm=bold
"        *Constant        constant expressions
"         Character       'c', '\n'
"         Number          234, 0xff
"         Boolean         TRUE, false
"         Float           2.3e10

highlight Identifier             ctermfg=4 cterm=none
"        *Identifier      variables, etc

highlight Statement              ctermfg=13 cterm=bold
"        *Statement       any statement
"         Conditional     if, then, else, endif, switch, etc.
"         Repeat          for, do, while, etc.
"         Label           case, default, etc.
"         Operator        "sizeof", "+", "*", etc.
"         Keyword         any other keyword
"         Exception       try, catch, throw

highlight PreProc                ctermfg=9 cterm=bold
"        *PreProc         generic Preprocessor
"         Include         preprocessor #include
"         Define          preprocessor #define
"         Macro           same as Define
"         PreCondit       preprocessor #if, #else, #endif, etc.

highlight Type                   ctermfg=3 cterm=none
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

highlight Underlined             ctermfg=13 cterm=underline
"        *Underlined      text that stands out, HTML links

highlight Error        ctermfg=9  cterm=none
"        *Error           any erroneous construct

highlight Todo         ctermfg=9  cterm=none
"        *Todo            anything that needs extra attention; mostly the
"                         keywords TODO FIXME and XXX
"


"----------------------------------------
" Special highlights

highlight String                 ctermfg=14 cterm=none
"        *String       "Things inside quotes" 'like these'
highlight Function               ctermfg=9 cterm=bold
"        *Function     the "foo" part of "def foo()"
highlight Delimiter              ctermfg=12 cterm=none
"        *Delimiter    Delimiters for things, like "
highlight Visual       ctermbg=8 cterm=none
"        *Visual       Visual mode appearance
highlight Search       ctermbg=6 ctermfg=15 cterm=none
"        *Search       Things you have searched for
highlight IncSearch    ctermbg=3 ctermfg=15 cterm=none
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
highlight Folded       ctermbg=8 ctermfg=7  cterm=none
highlight FoldedColumn ctermbg=8 ctermfg=7  cterm=none

" Cursor columns and lines
" Note CursorColumn is setting the bg colour to a fg colour
" We should consider setting it to 1 and cterm=reverse
highlight CursorColumn ctermbg=8
highlight ColorColumn  ctermbg=8
" Unfortunately we have to set term/cterm to none to remove underlines
highlight CursorLine   term=none cterm=none ctermbg=8 

" Ruby Specific

highlight rubyDefine   ctermbg=0 ctermfg=15 cterm=bold
"        *rubyDefine   Ruby def
" TODO Fix having to set the ctermbg here.  It is inheritting 8 from
" somewhere.
highlight rubySymbol   ctermfg=13
highlight rubyBlock    ctermfg=15 cterm=bold

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
highlight markdownHeadingDelimiter ctermfg=8 cterm=bold
highlight markdownItalic ctermfg=11 cterm=none
highlight markdownBoldItalic ctermfg=13 cterm=bold
highlight markdownAutomaticLink ctermfg=12 cterm=none
