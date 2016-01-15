
toys = Toy.create([	{ name: "American Girl Doll", description: "American Girl doll for sale", gender: "Female", age_range: "5 to 7 years", user_id: 1, city_id: 1, image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/american_girl.jpg" },
										{ name: "Model Cars", description: "Model cars that look sort of old timey", gender: "Male", age_range: "5 to 7 years", user_id: 1, city_id: 1, image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/cars.jpg" },
										{ name: "Doctor play set", description: "Let your kid pretend to be a doctor, includes accessories seen in the image", gender: "Both", age_range: "7 to 9 years", user_id: 2, city_id: 2, image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/dr_set.jpg" },
										{ name: "Fisher Price Toys ", description: "Assorted Fisher Price toys for your toddler.", gender: "Both", age_range: "1 to 3 years", user_id: 2 , city_id: 2 , image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/fisherprice.jpg" },
										{ name: "Hot Wheels", description: "Hot wheels cars that my son doesn't use anymore", gender: "Male", age_range: "3 to 5 years", user_id: 3, city_id: 3, image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/hot_wheels.jpg" },
										{ name: "Leap Pad Reader", description: "This a educational toy that my daughter used to help her get started with reading", gender: "Both", age_range: "3 to 5 years", user_id: 4, city_id: 4, image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/leappad.jpg" },
										{ name: "Wooden Puzzles", description: "Some large puzzles that you toddler can work on those fine motor skills", gender: "Both", age_range: "1 to 3 years", user_id: 4, city_id: 4, image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/more_puzzles.jpg" },
										{ name: "Puzzles", description: "These puzzles will give your kid a good challenge without being too hard.", gender: "Both", age_range: "7 to 9 years", user_id: 1, city_id: 1, image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/puzzles.jpg" },
										{ name: "Trampoline", description: "Your kid will love this.  A mini trampoline with a handle for safety.", gender: "Both", age_range: "5 to 7 years", user_id: 1, city_id: 1, image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/trampoline.jpg" },
										{ name: "Little Tykes Car", description: "Kids will love to pretend they are driving in this classic car.", gender: "Both", age_range: "3 to 5 years", user_id: 1, city_id: 1, image: "https://s3-us-west-2.amazonaws.com/toybinwdi24/toys/toypics/tykes_car.jpg" }
									])

cities = City.create ([{name: "New York"}, {name: "San Francisco"}, {name: "Los Angeles"}, {name: "Kansas City"}])


user1 = User.create([{ f_name: "Michael", l_name: "Rockway", email: "email@email.com", password: "123456", bio: "Here is a  bio", city_id: 1, avatar: "https://s3-us-west-2.amazonaws.com/toybinwdi24/face.png" }])
user2 = User.create([{ f_name: "Zohar", l_name: "Muzafi", email: "email.u@email.com", password: "123456", bio: "Here is my bio", city_id: 2 }])
user3 = User.create([{ f_name: "Cynthia", l_name: "Cynthia", email: "cynthia@email.com", password: "123456", bio: "Here is a  bio", city_id: 4 }])
user3 = User.create([{ f_name: "Andre", l_name: "Andre", email: "andre@email.com", password: "123456", bio: "Here is a  bio", city_id: 3 }])






