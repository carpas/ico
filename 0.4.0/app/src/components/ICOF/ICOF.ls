require! {
  \react : React
  \../../actions/actions : {ActionCreators}
  \prelude-ls : {map}
  \react-redux : {connect}
}

{DOM} = React
{object, func} = React.PropTypes
{div} = DOM


const ICOF = React.createClass do

  render: ->
    div {className: "ICOF", onClick: @props.onClick},
      map ~>
        div {}, it.content
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
