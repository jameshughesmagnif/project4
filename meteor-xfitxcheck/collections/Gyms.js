Gyms = new Mongo.Collection('gyms');

Gyms.allow({
    insert: function(userId, doc) {
      return !!userId;
    },
    update: function(userId, doc) {
      return !!userId;
    }
});

Ingredient = new SimpleSchema({
    name: {
      type: String
    },
    amount: {
      type: String
    }
});

GymSchema = new SimpleSchema({
    name: {
        type: String,
        label: "Name"
    },
    desc: {
      type: String,
      label: "Description"
    },
    ingredients: {
        type: [Ingredient]
    },

    inMenu: {
        type: Boolean,
        defaultValue: false,
        optional: true,
        autoform: {
          type: "hidden"
        }
    },
    author: {
      type: String,
      label: "Author",
      autoValue: function() {
        return this.userId
      },
      autoform: {
        type: "hidden"
      }
    },
    createdAt: {
      type: Date,
      label: "Created At",
      autoValue: function() {
        return new Date()

      },
      autoform: {
        type: "hidden"
      }
    }
});

Meteor.methods({
  toggleMenuItem: function(id, currentState) {
      Gyms.update(id, {
        $set: {
          inMenu: !currentState
        }
      });
  },
  deleteGym: function (id) {
    Gyms.remove(id);
  }
});

Gyms.attachSchema( GymSchema );
