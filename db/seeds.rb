user_one = User.create!(
  first_name: 'User',
  last_name: 'Doe',
  email: 'user@user.com',
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  first_name: 'User',
  last_name: 'Stewart',
  email: 'user2@user.com',
  password: 'password',
  password_confirmation: 'password'
)

food = Group.create(name: 'Food', icon: '', user_id: user_one.id)
bills = Group.create(name: 'Bills', icon: '', user_id: user_one.id)
outing = Group.create(name: 'Outing', icon: '', user_id: user_one.id)
travel = Group.create(name: 'Travel', icon: '', user_id: user_one.id)

burger = Report.create(name: 'Burger', amount: 5, author_id: user_one.id)
movie = Report.create(name: 'Movie', amount: 10, author_id: user_one.id)
internet = Report.create(name: 'Internet', amount: 50, author_id: user_one.id)
rent = Report.create(name: 'Rent', amount: 200, author_id: user_one.id)
jamaica = Report.create(name: 'I went to Jamaica', amount: 10_000, author_id: user_one.id)

food.reports << burger
bills.reports << internet
bills.reports << rent
outing.reports << jamaica
outing.reports << movie
travel.reports << jamaica
