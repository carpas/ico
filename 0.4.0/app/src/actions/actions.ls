const ActionTypes = do
  ICOF:
    ADD_CELL: \ADD_CELL
    REMOVE_CELL: \REMOVE_CELL


const ActionCreators = do
  addCell: ->
    {
      type: ActionTypes.ICOF.ADD_CELL
      payload: {}
    }

  removeCell: (index) ->
    {
      type: ActionTypes.ICOF.REMOVE_CELL
      payload:
        index
    }



module.exports = {
  ActionTypes
  ActionCreators
}
