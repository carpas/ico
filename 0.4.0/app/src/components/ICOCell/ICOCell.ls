require! {
  \react : React
  \react-redux : {connect}
}

{DOM, PropTypes} = React
{div} = DOM
{shape, number, string, bool, func} = PropTypes


const ICOCell = React.createClass do

  propTypes:
    content: shape do
      text: string.isRequired
      index: number.isRequired
      selected: bool.isRequired
      onClick: func


  render: ->
    div { className: "ICOCell #{if @props.content.selected then 'selected' else ''}", 'data-cell-id': @props.content.index, onClick: @props.onClick},
      @props.content.text



module.exports = ICOCell
