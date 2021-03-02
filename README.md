# How to run this project

When a user signs up then he/she is assigned role as subscriber. 
For creating as an admin, jump to rails console and assign role as admin

`rails c`

` u = User.find(user_id)`

`u.add_role :admin`
