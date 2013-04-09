class Mercury.ToolbarSelect extends Mercury.View

  logPrefix: 'Mercury.ToolbarSelect:'
  className: 'mercury-toolbar-select'

  events:
    'interface:hide': 'hide'

  constructor: ->
    super
    @visible ||= false
    @hide() unless @visible


  toggle: ->
    if @visible then @hide() else @show()


  hide: ->
    clearTimeout(@visibilityTimeout)
    @visible = false
    @el.css(opacity: 0)
    @visibilityTimeout = @delay(100, => @el.hide())


  show: ->
    clearTimeout(@visibilityTimeout)
    @visible = true
    @el.show()
    @visibilityTimeout = @delay(1, => @el.css(opacity: 1))
