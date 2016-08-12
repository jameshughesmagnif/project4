Meteor.publish('gyms', function(){
    return Gyms.find({author: this.userId});
});

Meteor.publish('singleGym', function(id){
  check(id, String);
    return Gyms.find({_id: id});
});
