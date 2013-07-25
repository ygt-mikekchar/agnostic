# Vim Agnostic Colour Scheme

Agnostic is a Vim colour scheme geared towards helping people who
use tmux to remote pair program.  When doing such pair programming
it often happens that each person has a preference for colour
schemes, especially dark vs light backgrounds.  Unfortunately
most vim colour schemes are geared towards specific colour
decisions.

Apart from a few rules, Agnostic tries not to force specific
colour choices and focusses on keeping readability over
a wide variety of choices.  This way, two or more people
can pair using vim over tmux and still use their own
preference for dark vs light themes.

Because Agnostic is meant to be used over tmux, it is a
colour xterm (cterm) only theme.  Users can set up their
colours in their terminal settings.  The rules for setting
up the colours are as follows.

## Background and Foreground Colours
   * 0 :  Normal Background Colour
   * 15:  Normal Foreground Colour (i.e. text)

   * Colours 0 - 7  are background colours
   * Colours 8 - 15 are foreground colours

It is unfortunate, but most terminals force the use
of colours 8 - 15 for bold colours.  Thus we are forced
to use these colours for forground colours.  In order
ensure readability, colours 0 - 7 are assumed to be
background colours.  Foreground and Backround colours
will be swapped when the font style is reversed.

## Default Colour Hues:
You are welcome to select any hue for the colours that
you prefer, but for some readability the theme makes
some assumptions.  These assumptions are based on the
default hues in the Vim documentation.

TODO: The Vim documentation uses the MSDOS default colours
because they are not modifiable.  I don't think this is part
of our target audience, so it might be better to use the
XTerm defaults.  This will make it easier to use the colour
preferences for apps other than vim.

  * For dark themes:
    | BG | FG | Colour |
    |:--:|:--:|:------:|
    | 0  |  8 | Black  |
    | 7  | 15 | White  |
 
  * For light themes:
    | BG | FG | Colour |
    |:--:|:--:|:------:|
    | 0  |  8 | White  |
    | 7  | 15 | Black  |

  * For all themes:
    | BG | FG | Colour   |
    |:--:|:--:|:--------:|
    | 1  |  9 | Blue     |
    | 2  | 10 | Green    |
    | 4  | 11 | Cyan     |
    | 5  | 12 | Red      |
    | 6  | 13 | Magenta  |
    | 7  | 14 | Yellow   |

## Foreground/Background colour combinations
Agnostic will not use the following foreground/background
colour combinations because they will have clashes
using the default hues.

  * Any background with it's corresponding foreground
    (e.g., 0 and 8, 1 and 9, 2 and 10, etc)
  * And combination of primary colour mixes
    - Thus you can't mix Blue with Green or Red,
      or Cyan with Magenta or Yellow, etc.

## Font effects
Agnostic avoids using the following font effects because
they are not supported on most terminals.

  * Italics
  * Multiple effects (e.g., reverse and bold at the same time)

