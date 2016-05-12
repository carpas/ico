require! {
    \./initialState
    \../actions/actions : {ActionTypes}
    \redux : {combineReducers}
}


ICOF = (state = initialState.ICOF, action) ->

  switch action.type
    | ActionTypes.ICOF.UPDATE_CONTENT =>
      Object.assign {}, state, do
        editorState: action.payload.editorState

    | _ =>
      state



module.exports = combineReducers {ICOF}
