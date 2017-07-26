design_app = {
  "Name" =>  nil,
  "Address" => nil,
  "Email" => nil,
  "Phone" => nil,
  "Fave shade of blue" => nil,
  "Wallpaper preferences" => nil,
  "Ombre is" => nil
}

puts "Name:"
design_app["Name"] = gets.chomp

puts "Address:"
design_app["Address"] = gets.chomp

puts "Email:"
design_app["Email"] = gets.chomp

puts "Phone:"
design_app["Phone"] = gets.chomp
puts "Fave shade of blue:"
design_app["Fave shade of blue"] = gets.chomp

puts "Wallpaper preferences:"
design_app["Wallpaper preferences"] = gets.chomp

puts "Ombre is:"
design_app["Ombre is"] = gets.chomp

puts design_app