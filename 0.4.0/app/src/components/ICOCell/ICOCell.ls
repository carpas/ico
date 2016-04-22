require! {
  \react : React
  \react-redux : {connect}
}

{DOM, PropTypes} = React
{div} = DOM
{shape, number, string} = PropTypes


const ICOCell = React.createClass do

  propTypes:
    index: number.isRequired
    text: string.isRequired


  render: ->
    div {className: \ICOCell }, @props.text



module.exports = ICOCell
