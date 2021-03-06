@user = User.create(email: "test@test.com", 
										password: "asdfasdf", 
										password_confirmation: "asdfasdf", 
										first_name: "Joop", 
										last_name: "Snow",
										phone: "4915735984394")

puts "1 user created"

AdminUser.create(email: "admin@test.com", 
								password: "asdfasdf", 
								password_confirmation: "asdfasdf", 
								first_name: "Admin", 
								last_name: "Name",
								phone: "4915735984394")

puts "1 adminUser created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"
