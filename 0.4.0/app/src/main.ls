require! {
  \react : React
  \react-dom : ReactDOM
  \./components/ICOF/ICOF : ICOF
  \./reducers/initialState : initialState
}

{createElement} = React
{div} = React.DOM


Main = ->
  ReactDOM.render do
    createElement ICOF, {}
    document.getElementById \ico-wrapper



module.exports = Main!
