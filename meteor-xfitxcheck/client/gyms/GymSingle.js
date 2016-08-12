Template.GymSingle.onCreated(function() {
  var self = this;
  self.autorun(function() {
    var id = FlowRouter.getParam('id');
    self.subscribe('singleGym', id);
  });
});


Template.GymSingle.helpers({
    gym: ()=> {
        var id = FlowRouter.getParam('id');
      return Gyms.findOne({_id: id});
    }
});
