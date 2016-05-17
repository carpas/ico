require! {
  \react : React
  \react-dom : ReactDOM
  \../../actions/actions : {ActionCreators}
  \draft-js : {Editor, EditorState, RichUtils, getDefaultKeyBinding, Entity, AtomicBlockUtils}
  \react-redux : {connect}
  \../ICOCell/ICOCell : {ICOCell}
}

{DOM, createElement} = React
{div} = DOM
unorderedListBlockType = 'unordered-list-item'


const ICOF = React.createClass do

  componentWillUpdate: ->
    #### FIXME: Find better way to handle me
    currentBlockType = RichUtils.getCurrentBlockType @props.editorState

    unless currentBlockType is unorderedListBlockType
      @props.onChange <| RichUtils.toggleBlockType @props.editorState, unorderedListBlockType


  render: ->
    div {className: \ICOF}, [
      div {className: \ICOF-title, key: 0},
        "ICO"
      createElement Editor, do
        editorState: @props.editorState
        onChange: @props.onChange
        handleKeyCommand: @handleKeyCommand
        blockRendererFn: @blockRendererFn
        onTab: @onTab
        key: 1
      div {className: \ICOF-user, key: 2, style: {backgroundImage: "url(#{@props.currentLoggedUser.profileImg})"}}
    ]


  blockRendererFn: (contentBlock) ->
    blockType = contentBlock.getType()

    switch blockType
      | unorderedListBlockType =>
        do
          component: ICOCell
          editable: true


  onTab: (event) ->
    event.preventDefault!
    {editorState} = @props
    newEditorState = RichUtils.onTab event, editorState, 40
    unless newEditorState is editorState
      @props.onChange newEditorState


  handleKeyCommand: (command) ->
    const newState = RichUtils.handleKeyCommand @props.editorState, command

    if newState
      @props.onChange newState
      return true

    false



mapStateToProps = (state) ->
  do
    editorState: state.ICOF.editorState
    currentLoggedUser: state.currentLoggedUser

mapDispatchToProps = (dispatch) ->
  do
    onChange: (editorState) ->
      dispatch ActionCreators.updateEditorState editorState

module.exports = connect mapStateToProps, mapDispatchToProps <| ICOF
