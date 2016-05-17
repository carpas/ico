require! {
    \./initialState
    \../actions/actions : {ActionTypes}
    \redux : {combineReducers}
}


ICOF = (state = initialState.ICOF, action) ->
  switch action.type
    | ActionTypes.ICOF.UPDATE_STATE =>
      Object.assign {}, state, do
        editorState: action.payload.editorState

    | _ =>
      state


currentLoggedUser = (state = initialState.currentLoggedUser, action) ->
  switch action.type
    | _ =>
      state



module.exports = combineReducers {ICOF, currentLoggedUser}
