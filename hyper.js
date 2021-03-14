// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

// once (and if) hyper becomes slow and disrupting, will try Kitty. Looks like fast and easy to backup.
// it's also quite fat.

// TODO: install fonts.
// FIXME: blank line in every new window https://github.com/vercel/hyper/issues/4504
// TODO find a way to reinstall all plugins: 
// like `for i in $(echo ${(F)$(hyper ls)[@]}); do hyper u $i && hyper i $i; done`

module.exports = {
  config: {
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 16,

    // font family with optional fallbacks
    fontFamily: 'Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    fontWeight: 'normal',
    fontWeightBold: 'bold',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: '#000',

    lineHeight: 1,
    letterSpacing: 0,

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BLOCK',
    cursorBlink: false,

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // terminal text color under BLOCK cursor
    cursorAccentColor: '#000',

    // terminal selection color
    selectionColor: 'rgba(248,28,229,0.3)',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#C7C329',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#20C5C6',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFFA72',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF',
    },

    shell: 'zsh',

    // set to `false` for no bell
    bell: 'SOUND',

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    webGLRenderer: true,

    // FIXME: it just stopped working
    hypercwd: {
      initialWorkingDirectory: '~/.dotfiles'
    }
  },

  // hyper-cat is awesome )))
  // one day will try https://www.npmjs.com/package/hyper-postprocessing
  // TODO:
  // - https://github.com/chabou/hyper-pane
  // - scrollbar
  plugins: [
    "hypercwd",
    "hyper-quit",
    "gitrocket",
    "space-pull",
    "hyperborder",
    "hyper-snazzy"
  ],


  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },

};
