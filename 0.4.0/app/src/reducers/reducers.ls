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
          text:
            "Hello ICO"
          index: state.content.length

    | _ =>
      state



module.exports = combineReducers {
  ICOF
}
