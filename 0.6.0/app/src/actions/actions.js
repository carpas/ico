const ActionTypes = {
  ICOF: {
    UPDATE_STATE: "UPDATE_STATE"
  }
};

const ActionCreators = {
  updateEditorState: (editorState) => {
    return {
      type: ActionTypes.ICOF.UPDATE_STATE,
      payload: {
        editorState
      }
    }
  }
}


module.exports = {
  ActionTypes,
  ActionCreators
};
