ACTION_TYPES = require './action-types'
{ICOF, CANVAS} = ACTION_TYPES
{ADD_ICO_CELL, REMOVE_ICO_CELL, INDENT_ICO_CELL, FOCUS_NEXT_CELL, FOCUS_PREVIOUS_CELL, TOGGLE_FOLD_ON_CELL, TOGGLE_ICOF_ACTIVE} = ICOF
{ADD_ICOF, REMOVE_ICOF} = CANVAS


ActionCreators =
	ICOF:
		addICOCell: (index) ->
			{
				type: ADD_ICO_CELL
				payload:
					index: index
			}


		removeICOCell: (index) ->
			{
				type: REMOVE_ICO_CELL
				payload:
					index: index
			}


		indentICOCell: (index) ->
			{
				type: INDENT_ICO_CELL
				payload:
					index: index
			}


		focusNextCell: ->
			{
				type: FOCUS_NEXT_CELL
			}


		focusPreviousCell: ->
			{
				type: FOCUS_PREVIOUS_CELL
			}


		toggleFoldOnCell: ->
			{
				type: TOGGLE_FOLD_ON_CELL
			}

		toggleIcofActive: (icofID) ->
			{
				type: TOGGLE_ICOF_ACTIVE
				payload:
					icofID: icofID
			}

	CANVAS:
		addICOF: ->
			{
				type: ADD_ICOF
			}
		removeICOF: ->
			{
				type: REMOVE_ICOF
			}



module.exports = ActionCreators