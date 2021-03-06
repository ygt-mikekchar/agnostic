# Agnostic Colour Scheme for Both Vim and Emacs

Agnostic is a colour scheme geared towards helping people who
use tmux to remote pair program.  When doing such pair programming
it often happens that each person has a preference for colour
schemes, especially dark vs light backgrounds.  Unfortunately
most most colour schemes are geared towards specific colour
decisions.  Originally this was a Vim colour scheme, but since
I now use Emacs in Evil mode, there is an emacs theme in the
emacs directory.

Apart from a few rules, Agnostic tries not to force specific
colour choices and focusses on keeping readability over
a wide variety of choices.  This way, two or more people
can pair using vim over tmux and still use their own
preference for dark vs light themes.  Similarly to keep setup
at a minimum, the colour scheme is designed to be readable
using as many popular colour palettes as possible.

Because Agnostic is meant to be used over tmux, it is a
16 colour xterm (cterm) only theme.  Users can set up their
colours in their terminal settings.  It's important to
understand the difference between a palette colour and the
theme's "colour".  There are 16 colours numbered 0 through 15.
These colours are traditionally set to black, red, green,
yellow, blue, magenta, cyan, gray and white, followed by
"bright" versions of those colours.  Your terminal can be
configured to display any colour you want, though.  In this
documentation, a "palette" refers to the actual colours you
see in the terminal while a "colour" refers to the setting
in your editor.  For instance, you might set colour #1 to
blue in your terminal -- blue would be the "palette" setting,
while the "colour" would be red.

## Screenshots 

If you look in the screenshots directory you can see the use of
agnostic with various palettes.

* ITerm.jpg: Default colours on Mac ITerm2 (and Xterm and Linux console)
* solarized.jpg: Solarized dark colours
* tango.jpg: tango colours
* agnostic-light.jpg: Agnostic's light theme
* agnostic-dark.jpg: Agnostic's dark theme

## Installation

### Vim

Agnostic can be installed by either simply copying `colors/agnostic.vim`
to your `.vim/colors` directory, or you can clone the repository and
install it with pathogen.

### Emacs

Copy the agnostic-theme.el directory into .emacs.d in your home directory.
Then type 'M-x customize-themes' and select agnostic.

### Supported Standard Colour Palettes

Palettes are up to you to install.  Agnostic is intended to work
well with the following palettes:

* Standard xterm, iterm, linux-terminal (see note 1)
* Solarized (see note 2)
* Tango (the only one without a note -- it is lovely)

Note 1: The dark blue on black background is very hard to see, but there
        is little I can do about it.  See the following section for
        work arounds

Note 2: No matter whether you install Solarized Dark or Solarized Light,
        it will be a dark colour scheme in Agnostic.  This is because
        the Agnostic colour scheme requires changes to the vim colourscheme
        in order to get light or dark.  There is nothing I can do about
        that.  See the following section for work arounds.

### Supported Custom Colour Palettes

Agnostic comes with some supported colour palettes that are meant to
compensate for the drawbacks in the standard colour palettes.

* **Agnostic Dark and Light**

These are two palettes that are meant to provide an experience that is
reasonably close to Solarized dark and light themes respectively.

#### Installation of Custom Colour Palettes

Currently under development.  We will eventually fork the Base16Builder
code as it works exactly how we need it.


## Rules that Agnostic Follows

Making a 16 color vim colorscheme that works well for
a variety of different terminals and different colour
preferences all at the same time requires that it makes
some very difficult decisions.  These decisions will
undoubtedly look strange if you don't know the background.
Here are the rules that it follows.

### Background and Foreground Colours
It is unfortunate, but most terminals force the use
of colours 8 - 15 for bold text.  Thus we are forced
to use these colours for foreground colours if we want
to use bold.  If we also wish to use background
colours, we want to make sure that we don't clash
with the foreground colours, and so we have to
use colours 0-7 for background colours.

Although this seems to be essentially backwards, this
works well for historical X terminal colour palettes
which use colours 0-7 for "normal" text and colours
8-15 as "bold" text.  The "bold" text is brighter than
the "normal" text.  This means that on a dark background,
with agnostic you will get bright characters on a
dark background with these historical palettes.

The very popular Solarized colour schemes presents a
real problem in that it puts shades of grey in
colours 8-15 (except for 9 and 13, which are orange
and violet respectively).  This means that if you use
a solarized palette, there isn't much colour in the
foreground, which is unfortunate.

The Solarized colour palette also uses colour 8 as a kind of
highlighted background colour.  In order to maintain
compatibility, Agnostic makes 8 a highlighted background
colour and 7 a highlighted foreground colour.  It (almost) never
uses bold for those colours.

Here are the general rules:

   * 0 :  Normal Background Colour
   * 15:  Normal Foreground Colour (i.e. text)

   * 8 :  Highlighted Background Colour (never bold)
   * 7 :  Highlighted Foreground Colour (never bold)
 
   * Colours 0 - 6  are background colours
   * Colours 9 - 15 are foreground colours


## Default Colour Hues:
You are welcome to select any hue for the colours that
you prefer, but for readability the theme makes
some assumptions.  These assumptions are based on the
default hues in standard xterm colours.

  * Dark themes are White on Black while Light themes are Black on White.
    For comparison, the solarized colours for these numbers are also
    printed.

    ```
    For dark themes:
    Default                Highlighted
     0: Black, base02      8: Dark Grey,  base03
    15: While, base3       7: Light Grey, base2

    For light themes:
    Default                Highlighted
     0: White, base02      8: Light Grey, base03
    15: Black, base3       7: Dark Grey,  base2
    ```

  * For all themes:
    ```
     BG                    FG
      1: Red,     red,      9: red      orange
      2: Green,   green,   10: green    base01
      3: Yellow,  yellow,  11: yellow   base00
      4: Blue,    blue,    12: blue     base0
      5: Magenta, magenta, 13: magenta  violet
      6: Cyan,    cyan,    14: cyan     base1
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

