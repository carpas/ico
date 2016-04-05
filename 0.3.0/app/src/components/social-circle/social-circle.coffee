React = require 'react'
{Component, DOM} = React
{div, h6} = DOM
{string} = React.PropTypes


class SocialCircle extends Component

	_cssPrefix: "social-circle"

	@propTypes:
		userName: string.isRequired


	render: =>
		div(
			{}
			div(
				className: "#{@_cssPrefix}-img"
			)
			h6(
				className: "#{@_cssPrefix}-name"
				"#{@props.userName}"
			)
		)



module.exports = SocialCircle