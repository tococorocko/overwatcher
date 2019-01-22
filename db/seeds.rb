require 'rest-client'

puts "Clean database"
puts "..."

Hero.destroy_all
puts "Cleaned"


puts "Get all Heroes from API"
puts "..."

list = RestClient.get "https://s3.eu-central-1.amazonaws.com/dojomadness.com/code-challenge/heros"
heroes = JSON.parse(list)
heroes['data'].each do |hero|
  Hero.create(
    name: hero['attributes']['name'],
    portrait: hero['attributes']['image_portrait'],
    background: hero['attributes']['image_splash'],
    link: "https://playoverwatch.com/en-us/heroes/#{(hero['attributes']['name']).downcase}"
  )
end

puts "Done"
