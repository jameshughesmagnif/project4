Template.Menu.onCreated(function() {
  var self = this;
  self.autorun(function() {
    self.subscribe('gyms');
  });
});

Template.Menu.helpers({
    gyms: ()=> {
      return Gyms.find({inMenu: true});
    }
});
