Template.ShoppingList.onCreated(function() {
  var self = this;
  self.autorun(function() {
    self.subscribe('gyms');
  });
});

Template.ShoppingList.helpers({
    shoppingList: ()=> {
      return Gyms.find({inMenu: true});
    }
});
