Template.Gyms.onCreated(function() {
  var self = this;
  self.autorun(function() {
    self.subscribe('gyms');
  });
});

Template.Gyms.helpers({
    gyms: ()=> {
      return Gyms.find({});
    }
});
Template.Gyms.events({
    'click .new-gym': () => {
        Session.set('newGym', true);
    }
});
