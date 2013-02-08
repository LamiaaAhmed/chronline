# Do NOT use asset_path -- galleria won't work
GALLERIA_THEME = '/assets/galleria/themes/chronicle/galleria.chronicle.js'


initialize '.galleria', ->
  Galleria.loadTheme(GALLERIA_THEME)
  Galleria.configure
    transition: 'fade'
    autoplay: 9000
    width: 636
    height: 393
  Galleria.run $(this)