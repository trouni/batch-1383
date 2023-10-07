tokyo = {
  # "key" => value
  "population" => 20_000_000,
  "landmark" => "Tokyo Tower",
  "country" => "Japan"
}

# CRUD

# Instead of an index, we use the keys

# READ
puts "Tokyo has a population of #{tokyo["population"]} inhabitants"
puts "Tokyo is located in #{tokyo["country"]}"

# CREATE
tokyo["number_of_districts"] = 23

# UPDATE
tokyo["population"] = 21_000_000

# DELETE
tokyo.delete("country")

# array[2]
# hash['key']
# method(argument)

# METHODS

tokyo.each do |key, value|
  puts "- #{key}: #{value}"
end

# WITH RICHER DATA
puts
puts "=== WITH RICHER DATA ==="
puts

tokyo = {
  # "key" => value
  "population" => 20_000_000,
  "landmarks" => ["Tokyo Tower", "Shibuya Crossing"],
  "country" => {
    "name" => "Japan",
    "population" => 200_000_000,
    "cities" => ["Tokyo", "Osaka"]
  }
}

p tokyo["landmarks"]
