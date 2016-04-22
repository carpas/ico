require! {
    \./initialState
    \../actions/actions : {ActionTypes}
    \redux : {combineReducers}
}


ICOF = (state = initialState.ICOF, action) ->

  switch action.type
    | ActionTypes.ICOF.ADD_CELL =>
      Object.assign {}, state

    | ActionTypes.ICOF.SELECT_CELL =>
      Object.assign {}, state

    | _ =>
      state



module.exports = combineReducers {
  ICOF
}
