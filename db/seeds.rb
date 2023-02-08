User.destroy_all
u1 = User.create :user_name => 'jones', :email => 'jonesy@ga.co', :password => 'chicken', :admin => true
u2 = User.create :user_name => 'craig', :email => 'craigsy@ga.co', :password => 'chicken'
u3 = User.create :user_name => 'holt', :email => 'holsy@ga.co', :password => 'chicken', :admin => true
u4 = User.create :user_name => 'burns', :email => 'burnsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Airplane.destroy_all
a1 = Airplane.create :plane_name => '747', :rows => '30', :columns => '6'
a2 = Airplane.create :plane_name => '747', :rows => '30', :columns => '6' 
a3 = Airplane.create :plane_name => '757', :rows => '35', :columns => '6' 
a4 = Airplane.create :plane_name => '303', :rows => '40', :columns => '6' 
puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 = Flight.create :flight_number => '23', :origin => 'SYD', :destination => 'MEL', :date => '2023-02-25'
f2 = Flight.create :flight_number => '12', :origin => 'SYD', :destination => 'LHR', :date => '2023-03-25'
f3 = Flight.create :flight_number => '45', :origin => 'SYD', :destination => 'PER', :date => '2023-04-25'
f4 = Flight.create :flight_number => '09', :origin => 'SYD', :destination => 'LGW', :date => '2023-05-20'
puts "#{ Flight.count } flights"

Seat.destroy_all
s1 = Seat.create :seat_number => 'A1'
s2 = Seat.create :seat_number => 'A2'
s3 = Seat.create :seat_number => 'A3'
s4 = Seat.create :seat_number => 'A4'
s5 = Seat.create :seat_number => 'A5'
s6 = Seat.create :seat_number => 'A6'
s7 = Seat.create :seat_number => 'B1'
s8 = Seat.create :seat_number => 'B2'
s9 = Seat.create :seat_number => 'B3'
s10 = Seat.create :seat_number => 'B4'
s11 = Seat.create :seat_number => 'B5'
s12 = Seat.create :seat_number => 'B6'
puts "#{ Seat.count } seats"

# Associations
puts "Flights and users"
f1.users << u1
f2.users << u2
f3.users << u3
f4.users << u4

puts "Airplanes and seats"
a1.seats << s1 << s2 << s3 << s4 << s5 << s6
a2.seats << s7 << s8 << s9 << s10 << s11 << s12

puts "Flights and airplanes"
a1.flights << f1
a2.flights << f2
a3.flights << f3
a4.flights << f4
