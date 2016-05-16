const ActionTypes = do
  ICOF:
    UPDATE_STATE: \UPDATE_STATE


const ActionCreators = do
  updateEditorState: (editorState) ->
    {
      type: ActionTypes.ICOF.UPDATE_STATE
      payload:
        editorState: editorState
    }



module.exports = {
  ActionTypes
  ActionCreators
}
