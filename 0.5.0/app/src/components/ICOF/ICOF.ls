require! {
  \react : React
  \react-dom : ReactDOM
  \../../actions/actions : {ActionCreators}
  \draft-js : {Editor, EditorState}
  \react-redux : {connect}
}

{DOM, createElement} = React
{div} = DOM


const ICOF = React.createClass do

  render: ->
    div {className: \ICOF},
      createElement Editor, {editorState: @props.editorState, onChange: @props.onChange}



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
