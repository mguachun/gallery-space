# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Work.destroy_all
Comment.destroy_all

# users = User.create!([
# { email: "lori@gmail.com", password:"grossman"}, 
# {  email: "lydia@gmail.com", password:"abc123"}, 
# {  email: "reid1@yahoo.com", password:"teacher"}, 
# {  email: "miker@hotmail.com", password:"rosen"},
# {  email: "willmanager@gmail.com", password:"manager"}, 
# {  email: "mary3@gmail.com", password:"mo33"}, 
# {  email: "ronnie@gmail.com", password:"goblingrandpa"}, 
# {  email: "2021hiker@gmail.com", password:"mountains"}, 
# { email: "walpole@gmail.com", password:"bobbob"}, 
# { email: "hg2020@gmail.com", password:"briggs"} ])

Work.create!([{ title: "Mona Lisa", artist: "Leonard da Vinci" , year: "1503" , medium: "oil"},
{ title:"Guernica", artist: "Pablo Picasso", year: "1937", medium: "oil"},
{ title: "The Birth of Venus", artist: "Sandro Botticelli", year: "1485", medium: "tempera"},
{ title: "The Kiss", artist: "Gustav Klimt", year: "1907", medium:"oil"},
{ title: "American Gothic", artist: "Grant Wood", year: "1930" , medium: "oil"},
{ title: "Nighthawks", artist: "Edward Hopper", year: "1942", medium: "oil"},
{ title: "The Nightwatch", artist: "Rembrandt", year: "1642" , medium: "oil"},
{ title: "Campbell's Soup Cans", artist: "Andy Warhol" , year: "1961" , medium: "syntheic polymer paint"},
{ title: "The Great Wave off Kanagawa", artist: "Hokusai", year: "1820" , medium: "print"},
{ title: "David", artist:"Michelangelo", year: "1501" , medium: "marble"} ])




Comment.create!({headline:"Comment 1", description: "I think this piece is in France",user_id: 4, work_id: 2})
Comment.create!({headline:"Comment 2", description: "This is actually a huge work of art in person", user_id: 7, work_id: 3})
Comment.create!({headline:"Comment 3", description: "Why is this artist known for this piece?", user_id: 5, work_id: 4})
Comment.create!({headline:"Comment 4", description: "Would this be more iconic if done in another medium?", user_id: 9, work_id: 5})
Comment.create!({headline:"Comment 5", description: "What does the title mean?", user_id: 3, work_id: 6})
Comment.create!({headline:"Comment 6", description: "me lol", user_id: 2, work_id: 7})
Comment.create!({headline:"Comment 7", description: "Game of thrones reference", user_id: 4, work_id: 8})
Comment.create!({headline:"Comment 8", description: "I could've made that!", user_id: 1, work_id: 9})
Comment.create!({headline:"Comment 9", description: "what artists were inspired by this piece?", user_id: 7, work_id: 10})
Comment.create!({headline:"Comment 10", description: "proportions", user_id: 10, work_id: 1})