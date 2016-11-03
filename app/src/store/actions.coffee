module.exports =

  someAction: ({commit}, newVal) ->
    console.log('some work done', newVal)
    commit 'SET_STATE_VAL', newVal
