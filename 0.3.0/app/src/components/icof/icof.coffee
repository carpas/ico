React = require 'react'
{Component, DOM, createElement} = React
{div} = DOM
{string, arrayOf, shape, number, object} = React.PropTypes
ICOFCell = require "./../icof-cell/icof-cell"
ICOFActionCreators = require('../../actions/action-creators').ICOF


class ICOF extends Component

	_cssPrefix: "icof"

	@propTypes:
		ICOFState: shape
			icofName: string.isRequired
			children: arrayOf shape(
				content: string
				indents: number.isRequired
			)
		Store: object.isRequired


	constructor: (props) ->
		{ICOFState} = props
		@state =
			children: ICOFState.children


	render: =>
		div(
			{className: "#{@_cssPrefix}", onKeyDown: @_handleKeyDown, onClick: @props.onclick}
			createElement ICOFCell, {indents: 0, content: @props.ICOFState.icofName, key: 0, Store: @props.Store}

			for child, index in @state.children
				createElement ICOFCell, {indents: child.indents, content: child.content, key: index + 1, Store: @props.Store}
		)


	_handleKeyDown: (event) =>
		RETURN_KEY = 13
		TAB_KEY = 9

		switch event.which
			when RETURN_KEY
				event.preventDefault()
				index = 1
				@_dispatchAddNewCell index
			when TAB_KEY
				event.preventDefault()
				index = 1
				@_dispatchIndentCell index


	_dispatchAddNewCell: (index) =>
		Store = @props.Store
		Store.dispatch ICOFActionCreators.addICOCell(index)


	_dispatchIndentCell: (index) =>
		Store = @props.Store
		Store.dispatch ICOFActionCreators.indentICOCell(index)



module.exports = ICOF