if (Meteor.isClient){
Accounts.onLogin(function() {
  FlowRouter.go('gym-book');
});

Accounts.onLogout(function() {
  FlowRouter.go('home');
});
}

FlowRouter.triggers.enter([function(context, redirect) {
    if(!Meteor.userId()) {
      FlowRouter.go('home');
    }
}]);

FlowRouter.route('/', {
    name: 'home',
    action() {
      if(Meteor.userId()) {
          FlowRouter.go('gym-book');
      }
      GAnalytics.pageview();
      BlazeLayout.render('HomeLayout');
    }
});

FlowRouter.route('/gym-book', {
    name: 'gym-book',
    action() {
      GAnalytics.pageview();
      BlazeLayout.render('MainLayout', {main: 'Gyms'});
    }
});

FlowRouter.route('/gym/:id', {
    name: 'gym',
    action() {
      GAnalytics.pageview();
      BlazeLayout.render('MainLayout', {main: 'GymSingle'});
    }
});

FlowRouter.route('/menu', {
    name: 'menu',
    action() {
      BlazeLayout.render('MainLayout', {main: 'Menu'});
    }
});

FlowRouter.route('/shopping-list', {
    name: 'shopping-list',
    action() {
      BlazeLayout.render('MainLayout', {main: 'ShoppingList'});
    }
});
