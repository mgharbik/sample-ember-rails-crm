App.LeadEditController = Ember.ObjectController.extend

  actions:
  	cancel: ->
      @get('model').rollback() 
      @transactionToRoute 'lead'

    saveChanges: ->
      @get('model').save().then =>
        @transactionToRoute 'lead'

    