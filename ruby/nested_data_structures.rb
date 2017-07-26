# Create nested data structure from a real-world scenario
zoo = {
  monkey: {
    number: 6,
    names_ages: {
      "Manny" => 12,
      "Mickey" => 10,
      "Maria" => 7,
      "Mary-Ellen" => 2,
      "Michel" => 5,
      "Mace" => 6
    },
    food: ['bananas', 'melon', 'granola', 'grapes', 'peanuts']
  },
  sea_lion: {
    number: 4,
    names_ages: {
      'Sealy' => 3,
      'Sami' => 4,
      'Stella' => 2
    },
    food: ['cod', 'halibut', 'shrimp', 'kelp']
  },
  giraffe: {
    number: 5,
    names_ages: {
      'Geri' => 3,
      'Geli' => 5,
      'Jamie' => 6,
      'Josie' => 2,
      'Jaggy' => 7
    },
    food: ['fern', 'lettuce', 'natural leaves', 'corn nuts']
  }
}

# Access and print deeply nested data:

puts "The number of giraffes is #{zoo[:giraffe][:number]}"
puts "Sea Lions can eat #{zoo[:sea_lion][:food][0]}, #{zoo[:sea_lion][:food][1]}, #{zoo[:sea_lion][:food][2]}, and #{zoo[:sea_lion][:food][3]}"
puts "The monkeys names are #{zoo[:monkey][:names_ages].keys[0]}, #{zoo[:monkey][:names_ages].keys[1]}, #{zoo[:monkey][:names_ages].keys[2]}, #{zoo[:monkey][:names_ages].keys[3]}, #{zoo[:monkey][:names_ages].keys[4]} and #{zoo[:monkey][:names_ages].keys[5]}"