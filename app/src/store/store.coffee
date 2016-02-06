Redux = require "redux"
{createStore} = Redux
Reducers = require "../reducers/reducers"


Store = createStore Reducers



module.exports = Store