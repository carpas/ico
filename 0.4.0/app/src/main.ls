require! {
  \react : React
  \react-dom : {render}
  \./components/ICOF/ICOF
  \./reducers/reducers
  \redux : {createStore}
  \react-redux : {Provider}
}

{createElement} = React
{div} = React.DOM
const store = createStore reducers


const Main = ->
  render do
    createElement Provider, {store},
      createElement ICOF, {}
    document.getElementById \ico-wrapper



module.exports = Main!
