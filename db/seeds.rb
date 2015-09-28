User.create!([
  {email: "apl@bananas.com", encrypted_password: "$2a$10$UDGeFrGV6m11EoV5Xcn4fOdiRHRS7TPs53odLpUbqzFQXvHWZdKa2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-09-17 04:26:38", last_sign_in_at: "2015-09-17 04:26:38", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Ride.create!([
  {name: "Elizabeth", sid: "951488429", phone: "541 480 6671", passengers: 3, origin: "University House", destination: "1961 Hilyard St.", completion: nil, vehicles_shift_id: nil},
  {name: "Summer", sid: "951353468", phone: "916 872 7517", passengers: 1, origin: "2345 Patterson St.", destination: "LLC South", completion: nil, vehicles_shift_id: nil},
  {name: "Morgan", sid: "", phone: "209 596 1758", passengers: 1, origin: "2438 University", destination: "4420 Hilyard", completion: nil, vehicles_shift_id: nil},
  {name: "Chelsea", sid: "951353765", phone: "818 416 0944", passengers: 1, origin: "14th and Pat", destination: "13th and Olive", completion: nil, vehicles_shift_id: nil},
  {name: "Emily", sid: "951153688", phone: "971 285 5787", passengers: 3, origin: "2250 Patterson", destination: "1414 Alder", completion: nil, vehicles_shift_id: nil},
  {name: "Fatoumata", sid: "951360529", phone: "541 246 4289", passengers: 1, origin: "740 E 15th", destination: "GSH", completion: nil, vehicles_shift_id: nil},
  {name: "Laykn", sid: "", phone: "503 440 3436", passengers: 2, origin: "551 E 14th", destination: "18th Emerald", completion: nil, vehicles_shift_id: nil},
  {name: "Kayla", sid: "951297842", phone: "541 212 2966", passengers: 1, origin: "740 E 13th", destination: "Ducks Village", completion: nil, vehicles_shift_id: nil},
  {name: "Haylie", sid: "951332454", phone: "503 939 7738", passengers: 1, origin: "AEP", destination: "Chase Village", completion: nil, vehicles_shift_id: nil},
  {name: "Kyla", sid: "951396868", phone: "214 235 8694", passengers: 1, origin: "2438 University St", destination: "Barnhart", completion: nil, vehicles_shift_id: nil},
  {name: "Rini", sid: "951381508", phone: "480 243 6532", passengers: 1, origin: "90 Common Drive Apt. 25", destination: "2475 Kincaid", completion: nil, vehicles_shift_id: nil},
  {name: "Meghan", sid: "951289886", phone: "541 790 9233", passengers: 2, origin: "Taylors", destination: "Skybox", completion: nil, vehicles_shift_id: nil},
  {name: "Jen", sid: "951347410", phone: "602 821 8089", passengers: 1, origin: "1727 Mill St.", destination: "1463 E 19th Ave", completion: nil, vehicles_shift_id: nil}
])
Shift.create!([
  {vehicle_id: nil},
  {vehicle_id: nil}
])
UsersShift.create!([
  {position_id: 3, shift_id: 16, user_id: 1},
  {position_id: nil, shift_id: 17, user_id: 1}
])
Vehicle.create!([
  {vehicle_number: 1, model: "Red"},
  {vehicle_number: 2, model: ""},
  {vehicle_number: 3, model: "White"},
  {vehicle_number: 4, model: "Yellow"},
  {vehicle_number: 5, model: ""},
  {vehicle_number: 6, model: "Blue"},
  {vehicle_number: 7, model: "Black"}
])
