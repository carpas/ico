require! {
  \react : React
  \react-dom : ReactDOM
  \../../actions/actions : {ActionCreators}
  \draft-js : {Editor, EditorState, RichUtils, getDefaultKeyBinding}
  \react-redux : {connect}
}

{DOM, createElement} = React
{div} = DOM


const ICOF = React.createClass do

  render: ->
    div {className: \ICOF},
      createElement Editor, do
        editorState: @props.editorState
        onChange: @props.onChange
        handleKeyCommand: @handleKeyCommand


  handleKeyCommand: (command) ->
    const newState = RichUtils.handleKeyCommand @props.editorState, command

    if newState
      @props.onChange newState

      return true

    false




mapStateToProps = (state) ->
  {
    editorState: state.ICOF.editorState
  }

mapDispatchToProps = (dispatch) ->
  {
    onChange: (editorState) ->
      dispatch ActionCreators.updateEditorContent editorState
  }

module.exports = connect mapStateToProps, mapDispatchToProps <| ICOF
