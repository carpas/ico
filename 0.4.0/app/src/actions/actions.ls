const ActionTypes = do
  ICOF:
    ADD_CELL: \ADD_CELL
    SELECT_CELL: \SELECT_CELL


const ActionCreators = do
  addCell: ->
    {
      type: ActionTypes.ICOF.ADD_CELL
      payload: {}
    }

  selectCell: (index) ->
    {
      type: ActionTypes.ICOF.SELECT_CELL
      payload:
        index
    }


module.exports = {
  ActionTypes
  ActionCreators
}
