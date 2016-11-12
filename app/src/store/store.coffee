Vuex = require('vuex')

state =
  emailInput: ''
  emailArray: []
  currentView: 'landing'

mutations =
  SET_EMAIL_INPUT: (state, input)->
    state.emailInput = input
  SET_EMAIL_ARRAY: (state, emailObject)->
    state.emailArray.push(emailObject)
  SET_CURRENT_VIEW: (state, newView)->
    state.currentView = newView

module.exports = new Vuex.Store({
  state
  mutations
  actions: require './actions'
  strict: process.env.NODE_ENV != 'production'
})
