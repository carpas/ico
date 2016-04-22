require! {
    \./initialState
    \../actions/actions : {ActionTypes}
    \redux : {combineReducers}
}


ICOF = (state = initialState.ICOF, action) ->

  switch action.type
    | ActionTypes.ICOF.ADD_CELL =>
      Object.assign {}, state, do
        content:
          ...state.content
          content:
            "Hello"

    | _ =>
      state



module.exports = combineReducers {
  ICOF
}
