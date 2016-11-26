# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
             email: "myexample@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar")

pets = [{:name => 'Pichichu', :specie => 'dog', :sex => 'male',
         :description => 'a little poop', :last_place => '224 Manhatan Avenue, Brookly, NY',
         :user_id => 1, :picture_url => '', :owner => true, :state => 'lost',
         :latitude => '40.710921', :longitude => '-73.945284'},
{:name => 'Michi', :specie => 'cat', :sex => 'female', :description => 'a little cat',
 :last_place => '224 Manhatan Avenue, Brookly, NY', :user_id => 1, :picture_url => '',
 :owner => true, :state => 'for_adoption', :latitude => '40.710921', :longitude => '-73.945284'}]



pets.each do |pet|
   Pet.create!(pet)
end

