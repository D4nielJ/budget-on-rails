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

food = Group.create!(name: 'Food',
                     icon: 'https://cdn-icons.flaticon.com/png/512/562/premium/562678.png?token=exp=1637953056~hmac=a71c47841abf96df216de38c9345a2d1',
                     user_id: user_one.id)

bills = Group.create!(name: 'Bills',
                      icon: 'https://cdn-icons-png.flaticon.com/512/1611/1611154.png',
                      user_id: user_one.id)

outing = Group.create!(name: 'Outing',
                       icon: 'https://cdn-icons.flaticon.com/png/512/4488/premium/4488772.png?token=exp=1637952987~hmac=86d6c2a38b749410fc4f4c3b9242f4bc',
                       user_id: user_one.id)

travel = Group.create!(name: 'Travel',
                       icon: 'https://cdn-icons.flaticon.com/png/512/870/premium/870092.png?token=exp=1637952940~hmac=2653091d4ee899e23d1debeec3b6d3e4',
                       user_id: user_one.id)

burger = Report.create!(name: 'Burger', amount: 5, author_id: user_one.id)
movie = Report.create!(name: 'Movie', amount: 10, author_id: user_one.id)
internet = Report.create!(name: 'Internet', amount: 50, author_id: user_one.id)
rent = Report.create!(name: 'Rent', amount: 200, author_id: user_one.id)
jamaica = Report.create!(name: 'I went to Jamaica', amount: 10_000, author_id: user_one.id)

food.reports << burger
bills.reports << internet
bills.reports << rent
outing.reports << jamaica
outing.reports << movie
travel.reports << jamaica
