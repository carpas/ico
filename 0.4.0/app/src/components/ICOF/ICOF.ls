require! {
  \react : React
  \../../actions/actions : {ActionCreators}
  \prelude-ls : {map}
  \react-redux : {connect}
  \../ICOCell/ICOCell
}

{DOM, createElement} = React
{div} = DOM


const ICOF = React.createClass do

  render: ->
    document.onkeydown = @_onKeyDown

    div {className: \ICOF, onKeyDown: @_onKeyDown},
      map ~>
        createElement ICOCell, {key: it.index, content: it, onClick: @props.onClick}
      , @props.cells


  _onKeyDown: ->
    console.log it



mapStateToProps = (state) ->
  {
    cells: state.ICOF.cells
  }

mapDispatchToProps = (dispatch) ->
  {
    onClick: (event) ->
      cellId = event.target.dataset.cellId
      dispatch ActionCreators.selectCell cellId
  }

module.exports = connect mapStateToProps, mapDispatchToProps <| ICOF
