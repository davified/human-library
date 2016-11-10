# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category.create([{category: 'Foreign Worker'}, {category: 'Domestic Worker'}, {category: 'Ex-Convict'}, {category: 'Physically disabled'}])


User.create([
  {name: 'Leonard Choo', is_admin: false, is_book: true, email: 'book1@email.com', encrypted_password: '$2a$11$se1j6dYcJdyBU6fGvMo9Xe5qiivXxvJTaRLyqxH/ixxc/Q2Skqsli'},
  {name: 'Sam Tan', is_admin: false, is_book: true, email: 'book2@email.com', encrypted_password: '$2a$11$se1j6dYcJdyBU6fGvMo9Xe5qiivXxvJTaRLyqxH/ixxc/Q2Skqsli'},
  {name: 'Dominic Lucas', is_admin: false, is_book: true, email: 'book3@email.com', encrypted_password: '$2a$11$se1j6dYcJdyBU6fGvMo9Xe5qiivXxvJTaRLyqxH/ixxc/Q2Skqsli'},
  {name: 'Yeow Choo', is_admin: false, is_book: true, email: 'book4@email.com', encrypted_password: '$2a$11$se1j6dYcJdyBU6fGvMo9Xe5qiivXxvJTaRLyqxH/ixxc/Q2Skqsli'}
])

Book.create([
  {user_id: 2, category_id: 4, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', image_url: 'http://images.wisegeek.com/asian-man-wearing-blue-shirt.jpg'},
  {user_id: 3, category_id: 2, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', image_url: 'https://v.cdn.vine.co/r/avatars/CD948EFDE2989477033799495680_pic-r-1378883868512bf86927b60.jpg_ty_a6VlEIlG0LS6WFKbGI6UrQGOdQqWcYW9st_sQWAq11vD4P3JFK0roslBIRrco.jpg?versionId=nUh_PwRHc9FAMrpjGOPw5iD_bNxwO8Nd'},
  {user_id: 4, category_id: 3, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', image_url: 'https://pbs.twimg.com/profile_images/1717956431/BP-headshot-fb-profile-photo_400x400.jpg'},
  {user_id: 5, category_id: 1, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', image_url: 'http://www.abcsofattraction.com/blog/wp-content/uploads/2012/10/poker-face-3.jpg'}
  ])
