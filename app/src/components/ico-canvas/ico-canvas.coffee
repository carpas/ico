React = require 'react'
{Component, DOM, createElement} = React
{div} = DOM
{object} = React.PropTypes
ICOF = require "./../icof/icof"
ActionCreators = require('../../actions/action-creators')
CanvasActionCreators = ActionCreators.CANVAS
ICOFActionCreators = ActionCreators.ICOF


class ICOCanvas extends Component

	_cssPrefix: "ico-canvas"

	@propTypes:
		appState: object.isRequired
		Store: object.isRequired


	constructor: (props) ->
		super props
		{appState} = props
		@state =
			ICOFS: appState.ICOFS


	render: =>
		div(
			{className: "#{@_cssPrefix}"}
			for ICOFState in @state.ICOFS
				createElement ICOF, {ICOFState, key: ICOFState.id, id: ICOFState.id, Store: @props.Store, onclick: @_handleClick}
		)


	_handleClick: (event) =>
		Store = @props.Store

		Store.dispatch ICOFActionCreators.toggleIcofActive event.target.id



module.exports = ICOCanvas