React = require 'react'
{Component, DOM, createElement} = React
{div, input} = DOM
{string, number, object} = React.PropTypes


class ICOFCell extends Component

	_cssPrefix: "icof-cell"

	@propTypes:
		content: string.isRequired
		indents: number.isRequired
		Store: object.isRequired


	constructor: (props) ->
		super props
		@state =
			content: @props.content
			indents: @props.indents


	_handleChange: (event) =>
		@setState
			content: event.target.value


	render: =>
		div(
			{className: "#{@_cssPrefix} #{@_cssPrefix}-#{@state.indents}-indents", contentEditable: true, onChange: @_handleChange}
			@state.content
		)



module.exports = ICOFCell