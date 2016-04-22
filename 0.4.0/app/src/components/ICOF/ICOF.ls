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
    div {className: \ICOF, onClick: @props.onClick},
      map ~>
        createElement ICOCell, {key: it.index, index: it.index, text: it.text}
      , @props.content



mapStateToProps = (state) ->
  {
    content: state.ICOF.content
  }

mapDispatchToProps = (dispatch) ->
  {
    onClick: ->
      dispatch ActionCreators.addCell()
  }

module.exports = connect mapStateToProps, mapDispatchToProps <| ICOF
