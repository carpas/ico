require! {
  \react : React
  \draft-js : {EditorBlock}
}

{DOM, createElement} = React
{div} = DOM


const ICOCell = React.createClass do

  render: ->
    div {className: \ICOCell}, [
      createElement EditorBlock, {...@props, key: 0}
    ]



module.exports = {ICOCell}
