const ActionTypes = do
  ICOF:
    UPDATE_CONTENT: \UPDATE_CONTENT


const ActionCreators = do
  updateEditorContent: (editorState) ->
    {
      type: ActionTypes.ICOF.UPDATE_CONTENT
      payload:
        editorState: editorState
    }



module.exports = {
  ActionTypes
  ActionCreators
}
