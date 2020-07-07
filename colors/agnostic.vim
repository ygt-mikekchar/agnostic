let g:colors_name="agnostic"

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
"    Colours 9 - 15 are foreground colours
"
" Default Colour Hues are as follows.  The values
" on the left hand side are normal Xterm themes
" and the values on the right are solarized.
" See the section below for information on solarized
" compatibility.
"
"    For dark themes:
"    Default                Highlighted
"     0: Black, base02      8: Dark Grey,  base03
"    15: While, base3       7: Light Grey, base2
"
"    For light themes:
"    Default                Highlighted
"     0: White, base02      8: Light Grey, base03
"    15: Black, base3       7: Dark Grey,  base2
"
"    For all themes:
"     BG                    FG
"      1: Red,     red,      9: red      orange
"      2: Green,   green,   10: green    base01
"      3: Yellow,  yellow,  11: yellow   base00
"      4: Blue,    blue,    12: blue     base0
"      5: Magenta, magenta, 13: magenta  violet
"      6: Cyan,    cyan,    14: cyan     base1

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
"
" Compatibility with Solarized
"   Keeping compatibility with solarized represents a challenge.
"   Solarized keeps the standard xterm hue settings for
"   the first 8 colours, but changes the second 8 colours to
"   shades of grey.  Since agnostic uses the second 8 colours
"   for foreground colours, this basically makes the agnostic
"   theme colourless when using a solarized colour palette.
"
"   Because compatibility with solarized is a very high priority,
"   I have tried to mix up some of the foreground and background
"   colours where it would improve readability for a solarized
"   palette and doesn't detract from the other supported
"   palettes.
"
"   Solarized is also a pain because in order to change the
"   theme from dark to light, they change the vim theme instead
"   of the palette.  This means that no matter whether you are
"   using a dark solarized palette or light solarized palette
"   with agnostic, it will always come out looking like the
"   solarized dark theme.  There is no way to fix this, unfortunately.
"
"   A very high priority is to create agnostic palettes that
"   mimic both dark and light solarized themes to an extent
"   that most solarized users will not be bothered by the
"   differences.  The current agnostic light and agnostic
"   dark themes are close but not perfect.

" Standard highlight groups

highlight Normal       ctermbg=0 ctermfg=15 cterm=none
"        *Normal          any text

highlight Comment                ctermfg=12
"        *Comment         like this line

highlight Constant               ctermfg=14 cterm=bold
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

highlight PreProc                ctermfg=9 cterm=bold
"        *PreProc         generic Preprocessor
"         Include         preprocessor #include
"         Define          preprocessor #define
"         Macro           same as Define
"         PreCondit       preprocessor #if, #else, #endif, etc.

highlight Type                   ctermfg=11 cterm=none
"        *Type            int, long, char, etc.
"         StorageClass    static, register, volatile, etc.
"         Structure       struct, union, enum, etc.
"         Typedef         A typedef

highlight Special                ctermfg=14  cterm=bold
"        *Special         any special symbol
"         SpecialChar     special character in a constant
"         Tag             you can use CTRL-] on this
"         SpecialComment  special things inside a comment
"         Debug           debugging statements

highlight Underlined             ctermfg=13 cterm=underline
"        *Underlined      text that stands out, HTML links

highlight Error        ctermbg=1 ctermfg=15 cterm=none
"        *Error           any erroneous construct

highlight Todo         ctermbg=1 ctermfg=15 cterm=none
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

" Messages
highlight ErrorMsg     ctermbg=1 ctermfg=15 cterm=none
highlight WarningMsg   ctermbg=3 ctermfg=15 cterm=bold
highlight ModeMsg      ctermbg=6 ctermfg=15 cterm=bold
highlight MoreMsg      ctermbg=5 ctermfg=15 cterm=bold
highlight Question     ctermbg=5 ctermfg=15 cterm=bold

" Pmenu
highlight PmenuSel ctermfg=11 ctermbg=4
highlight Pmenu ctermfg=7 ctermbg=8 cterm=bold

" Status line
highlight StatusLine   ctermbg=7 ctermfg=4  cterm=none
"        *StatusLine   The status line for the active window
highlight StatusLineNC ctermbg=7 ctermfg=8  cterm=none
"        *StatusLineNC The status line for the non active window
highlight LineNr       ctermbg=7 ctermfg=8  cterm=none
"        *LineNr       Line numbers

" Diff
highlight DiffChange   ctermbg=4 ctermfg=15 cterm=none
highlight DiffText     ctermbg=3 ctermfg=15 cterm=none
highlight DiffAdd      ctermbg=2 ctermfg=15 cterm=none
highlight DiffDelete   ctermbg=1 ctermfg=15 cterm=none

" Folding
highlight Folded       ctermbg=6 ctermfg=15  cterm=none
highlight FoldedColumn ctermbg=6 ctermfg=15  cterm=none

" Cursor columns and lines
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

" HTML
highlight htmlH1 ctermbg=6 ctermfg=15 cterm=bold
highlight htmlH2 ctermbg=6 ctermfg=15 cterm=none
highlight htmlH3 ctermfg=15 cterm=bold

" Markdown
highlight markdownH1 ctermfg=11 cterm=bold
highlight markdownH2 ctermfg=11 cterm=none
highlight markdownH3 ctermfg=11 cterm=none
highlight markdownH4 ctermfg=11 cterm=none
highlight markdownH5 ctermfg=11 cterm=none
highlight markdownH6 ctermfg=11 cterm=none
highlight markdownHeadingRule ctermfg=12 cterm=bold
highlight markdownHeadingDelimiter ctermfg=12 cterm=bold
highlight markdownItalic ctermfg=11 cterm=none
highlight markdownBoldItalic ctermfg=13 cterm=bold
highlight markdownAutomaticLink ctermfg=12 cterm=none

" Files
highlight Directory ctermbg=0 ctermfg=15 cterm=none

" Spell checking
hi SpellBad cterm=underline ctermfg=1 ctermbg=0
hi SpellCap cterm=underline ctermfg=4 ctermbg=0
hi SpellRare cterm=underline ctermfg=4 ctermbg=0
hi SpellLocal cterm=underline ctermfg=6 ctermbg=0

" Various
highlight Title ctermbg=0 ctermfg=9 cterm=none

" Org mode
highlight org_todo_keyword_TODO ctermfg=9 cterm=bold
highlight org_todo_keyword_DONE ctermfg=10 cterm=bold
highlight org_heading1 ctermfg=11 cterm=bold
highlight org_heading2 ctermfg=11 cterm=none
highlight org_heading3 ctermfg=11 cterm=none
highlight org_heading4 ctermfg=11 cterm=none
highlight org_timestamp ctermfg=13 cterm=none
highlight org_timestamp_inactive ctermfg=13 cterm=none
highlight org_deadline_scheduled ctermfg=9 cterm=none


" Coc
hi CocErrorSign  ctermfg=9
hi CocWarningSign  ctermfg=11
hi CocInfoSign  ctermfg=14
hi CocHintSign  ctermfg=13
