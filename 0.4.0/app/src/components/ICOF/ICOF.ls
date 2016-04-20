require! {
  \react : React
}

{DOM} = React
{object} = React.PropTypes
{div, input} = DOM


ICOF = React.createClass do

  render: ->
    div className: "ICOF", ["Hello World"]



module.exports = ICOF
