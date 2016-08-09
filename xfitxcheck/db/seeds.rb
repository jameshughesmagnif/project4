# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Plan.destroy_all
Gym.destroy_all

gyms = Gym.create(
[
  {name:"District Crossfit", address:"1525 Half St SW, Washington, DC 20024", website: "http://districtcrossfit.com", rating: 5.0},
  {name:"Crossfit DC Northeast", address:"1365 H St NE, Washington, DC 20002", website:"http://crossfitdcne.com", rating: 4.5},
  {name:"Old City Crossfit", address:"810 H St NE, Washington, DC 20002", website:" http://oldcitycrossfit.com", rating: 5.0},
  {name:"Primal Fitness", address:"219 M St NW, Washington, DC 20001", website:"http://primal-fitness.com", rating: 4.5},
  {name:"Crossfit Petworth", address:"1240 Upshur St NW, Washington, DC 20011", website:"http://crossfitpetworth.com", rating: 5.0},
  {name:"Crossfit Praxis", address:"2217 14th St NW, Washington, DC 20009", website:"http://crossfitpraxis.com", rating: 4.5},
  {name:"Crossfit Balance Glover Park", address:"2121 Wisconsin Ave NW #110, Washington, DC 20007", website:"http://crossfitbalance.com", rating: 4.0},
  {name:"Crossfit Foggy Bottom", address:"2401 M St NW, Washington, DC 20037", website:"http://crossfitbalance.com", rating: 4.5},
  {name:"Crossfit Balance", address:"1111 14th St NW, Washington, DC 20008", website:"http://crossfitbalance.com", rating: 4.0},
  {name:"202 Strong", address:"1722 I St NW, Washington, DC 20006", website:"http://202strong.com", rating: 5.0},
  {name:"Humble Beast Crossfit", address:"1337 Connecticut Ave NW, Washington, DC 20036", website:"http://humblebeastcrossfit.com", rating: 5.0},
  {name:"Crossfit DC", address:"1722 14th St NW, Washington, DC 20009", website:"http://crossfitdc.com", rating: 4.5},
  {name:"Crossfit Hierarchy", address:"1681 Kalorama Rd NW, Washington, DC 20009", website:"http://crossfithierarchy.com", rating: 5.0},
  {name:"Second Wind Crossfit", address:"5509 14th St NW, Washington, DC 20011", website:"http://secondwindcrossfit.com", rating: 5.0},
  {name:"Crossfit Hierarchy Ivy City", address:"1516 Okie St NE, Washington, DC 20009", website:"http://crossfithierarchy.com", rating: 5.0}

]
)
Plan.create([
  {months: 1, monthly_price: 245, num_classes:"Unlimited", gym:[0]},
  {months: 12, monthly_price: 199, num_classes:"Unlimited", gym:[0]},
  {months: 1, monthly_price: 205, num_classes:"13", gym:[0]},
  {months: 12, monthly_price: 175, num_classes:"13", gym:[0]},
  {months: 1, monthly_price: 165, num_classes:"9", gym:[0]},
  {months: 12, monthly_price: 135, num_classes:"9", gym:[0]},
  {months: 1, monthly_price: 249, num_classes:"Unlimited", gym:[1]},
  {months: 12, monthly_price: 219, num_classes:"Unlimited", gym:[1]},
  {months: 1, monthly_price: 209, num_classes:"10", gym:[1]},
  {months: 12, monthly_price: 179, num_classes:"10", gym:[1]},
  {months: 1, monthly_price: 245, num_classes:"Unlimited", gym:[2]},
  {months: 12, monthly_price: 195, num_classes:"Unlimited", gym:[2]},
  {months: 1, monthly_price: 210, num_classes:"Unlimited", gym:[3]},
  {months: 12, monthly_price: 180, num_classes:"Unlimited", gym:[3]},
  {months: 1, monthly_price: 230, num_classes:"Unlimited", gym:[3]},
  {months: 12, monthly_price: 210, num_classes:"Unlimited", gym:[3]},
  {months: 1, monthly_price: 229, num_classes:"Unlimited", gym:[4]},
  {months: 12, monthly_price: 199, num_classes:"Unlimited", gym:[4]},
  {months: 1, monthly_price: 199, num_classes:"13", gym:[4]},
  {months: 12, monthly_price: 169, num_classes:"13", gym:[4]},
  {months: 1, monthly_price: 220, num_classes:"Unlimited", gym:[5]},
  {months: 12, monthly_price: 199, num_classes:"Unlimited", gym:[5]},
  {months: 1, monthly_price: 190, num_classes:"13", gym:[5]},
  {months: 12, monthly_price: 170, num_classes:"13", gym:[5]},
  {months: 1, monthly_price: 250, num_classes:"Unlimited", gym:[6]},
  {months: 12, monthly_price: 179, num_classes:"Unlimited", gym:[6]},
  {months: 1, monthly_price: 250, num_classes:"Unlimited", gym:[7]},
  {months: 12, monthly_price: 179, num_classes:"Unlimited", gym:[7]},
  {months: 1, monthly_price: 250, num_classes:"Unlimited", gym:[8]},
  {months: 12, monthly_price: 179, num_classes:"Unlimited", gym:[8]},
  {months: 1, monthly_price: 259, num_classes:"Unlimited", gym:[9]},
  {months: 12, monthly_price: 219, num_classes:"Unlimited", gym:[9]},
  {months: 1, monthly_price: 225, num_classes:"Unlimited", gym:[10]},
  {months: 12, monthly_price: 175, num_classes:"Unlimited", gym:[10]},
  {months: 1, monthly_price: 249, num_classes:"Unlimited", gym:[11]},
  {months: 12, monthly_price: 219, num_classes:"Unlimited", gym:[11]},
  {months: 1, monthly_price: 209, num_classes:"10", gym:[11]},
  {months: 12, monthly_price: 179, num_classes:"10", gym:[11]},
  {months: 1, monthly_price: 250, num_classes:"Unlimited", gym:[12]},
  {months: 12, monthly_price: 200, num_classes:"Unlimited", gym:[12]},
  {months: 1, monthly_price: 195, num_classes:"Unlimited", gym:[13]},
  {months: 1, monthly_price: 155, num_classes:"9", gym:[13]},
  {months: 1, monthly_price: 190, num_classes:"Unlimited", gym:[14]},
  {months: 12, monthly_price: 150, num_classes:"Unlimited", gym:[14]}
])
