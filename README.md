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

## Screenshots

If you look in the screenshots directory you can see the use of
agnostic with various palettes.

   * agnostic-ss.jpg: Agnostic's light theme
   * agnostic-dark-ss.jpg: Agnostic's dark theme
   * ITerm.jpg: Default colours on Mac ITerm2 (and Linux console)
   * solarized-ss.jpg: Solarized dark colours
   * tango.jpg: Gnome-terminal tango colours

## Background and Foreground Colours
   * 0 :  Normal Background Colour
   * 15:  Normal Foreground Colour (i.e. text)

   * 8 :  Highlighted Background Colour
   * 7 :  Highlighted Foreground Colour
 
   * Colours 0 - 6  are background colours
   * Colours 9 - 17 are foreground colours

It is unfortunate, but most terminals force the use
of colours 8 - 15 for bold colours.  Thus we are forced
to use these colours for forground colours.  In order
ensure readability, colours 0 - 6 are assumed to be
background colours.  Foreground and Backround colours
will be swapped when the font style is reversed.

The Solarized colour scheme uses colour 8 as a kind of
highlighted background colour.  In order to maintain
compatibility, Agnostic makes 8 a highlighted background
colour and 7 a highlighted foreground colour.  It never
uses bold for those colours.

## Default Colour Hues:
You are welcome to select any hue for the colours that
you prefer, but for some readability the theme makes
some assumptions.  These assumptions are based on the
default hues in standard xterm colours.

  * Dark themes are White on Black while Light themes are Black on White:
    ```
    | BG | FG | Colour       |
    |:--:|:--:|:------------:|
    | 0  | 15 | Black/White  |
    | 8  |  7 | Grey         |
    ```


  * For all themes:
    ```
    | BG | FG | Colour   |
    |:--:|:--:|:--------:|
    | 1  |  9 | Red      |
    | 2  | 10 | Green    |
    | 4  | 11 | Yellow   |
    | 5  | 12 | Blue     |
    | 6  | 13 | Magenta  |
    | 7  | 14 | Cyan     |
    ```

## Foreground/Background colour combinations
Agnostic will not use the following foreground/background
colour combinations because they will have clashes
using the default hues.

  * Any background with it's corresponding foreground
    (e.g., 1 and 9, 2 and 10, etc)
  * And combination of primary colour mixes
    - Thus you can't mix Blue with Green or Red,
      or Cyan with Magenta or Yellow, etc.

## Font effects
Agnostic avoids using the following font effects because
they are not supported on most terminals.

  * Italics
  * Multiple effects (e.g., reverse and bold at the same time)

