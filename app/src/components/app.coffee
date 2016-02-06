React = require "react"
ReactDOM = require "react-dom"
{DOM, createElement} = React
IcoCanvas = require './ico-canvas/ico-canvas'
Store = require '../store/store'


Main = =>
	ReactDOM.render(
		createElement IcoCanvas, {appState: Store.getState(), Store}
		document.getElementById "app"
	)



module.exports = Main()