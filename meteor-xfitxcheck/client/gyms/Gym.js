Template.Gym.onCreated(function() {
  this.editMode = new ReactiveVar(false);
  // this.editMode = new ReactiveVar();
  // this.editMode.set(false);
});


Template.Gym.helpers({
    updateGymId: function() {
      return this._id;
    },
    editMode: function() {
      return Template.instance().editMode.get();
    }
});


Template.Gym.events({
    'click .toggle-menu': function() {
        Meteor.call('toggleMenuItem', this._id, this.inMenu);
   },
   'click .fa-trash' : function() {
        Meteor.call('deleteGym', this._id);
   },
   'click .fa-pencil' : function(event, template) {
        template.editMode.set(!template.editMode.get());
   }
});
