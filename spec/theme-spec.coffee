describe "One Ambiance UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('one-ambiance-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('one-ambiance-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('one-ambiance-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-one-ambiance-ui-layoutmode')).toBe 'auto'

    atom.config.set('one-ambiance-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-one-ambiance-ui-layoutmode')).toBe 'spacious'
