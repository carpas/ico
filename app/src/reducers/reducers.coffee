ACTION_TYPES = require '../actions/action-types'
{ADD_ICO_CELL, REMOVE_ICO_CELL, INDENT_ICO_CELL, FOCUS_NEXT_CELL, FOCUS_PREVIOUS_CELL, TOGGLE_FOLD_ON_CELL, TOGGLE_ICOF_ACTIVE} = ACTION_TYPES.ICOF
InitialState = require './initialState'


ICOFReducers = (state = InitialState.ICOFS, action) =>
	switch action.type
		when TOGGLE_ICOF_ACTIVE
			console.log state
			console.log "Toggle ICOF Active"

		when REMOVE_ICO_CELL
			console.log "Remove ICO Cell"

		when INDENT_ICO_CELL
			console.log "Indent ICO Cell"

		when FOCUS_NEXT_CELL
			console.log "Focus Next Cell"

		when FOCUS_PREVIOUS_CELL
			console.log "Focus Previous Cell"

		when TOGGLE_FOLD_ON_CELL
			console.log "Toggle Fold on Cell"

		when ADD_ICO_CELL
			console.log "Add New Cell"

		else
			state


Reducers = (state = InitialState, action) =>
	{
		ICOFS: ICOFReducers state.ICOFS, action
	}



module.exports = Reducers