# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Person.destroy_all
Role. destroy_all

# Generate models and tables, according to the domain model
# TODO!


# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

# Insert a row
christophernolan = Person.new({name: "Christopher Nolan"})
christophernolan.save

christianbale = Person.new({name: "Christian Bale"})
christianbale.save

michaelcaine = Person.new({name: "Michael Caine"})
michaelcaine.save

liamneeson = Person.new({name: "Liam Neeson"})
liamneeson.save

katieholmes = Person.new({name: "Katie Holmes"})
katieholmes.save

garyoldman = Person.new({name: "Gary Oldman"})
garyoldman.save

heathledger= Person.new({name: "Heath Ledger"})
heathledger.save

aaroneckhart = Person.new({name: "Aaron Eckhart"})
aaroneckhart.save

maggiegyllenhaal = Person.new({name: "Maggie Gyllenhaal"})
maggiegyllenhaal.save

tomhardy = Person.new({name: "Tom Hardy"})
tomhardy.save

josephgordonlevitt = Person.new({name: "Joseph Gordon-Levitt"})
josephgordonlevitt.save

annehathaway = Person.new({name: "Anne Hathaway"})
annehathaway.save

batmanbegins = Movie.new({title: "Batman Begins", year_released: "2008", rated: "PG-13", person_id: christophernolan.id})
batmanbegins.save

darkknight = Movie.new({title: "Dark Knight", year_released: "2008", rated: "PG-13", person_id: christophernolan.id}) 
darkknight.save

darkknightrises = Movie.new({title: "Dark Knight Rises", year_released: "2012", rated: "PG-13", person_id: christophernolan.id}) 
darkknightrises.save

brucewayne = Role.new({character_name: "Bruce Wayne", person_id: christianbale.id, movie_id: batmanbegins.id}) 
brucewayne.save

brucewayne = Role.new({character_name: "Bruce Wayne", person_id: christianbale.id, movie_id: darkknight.id}) 
brucewayne.save

brucewayne = Role.new({character_name: "Bruce Wayne", person_id: christianbale.id, movie_id: darkknightrises.id}) 
brucewayne.save

alfred = Role.new({character_name: "Alfred", person_id: michaelcaine.id, movie_id: batmanbegins.id}) 
alfred.save

alfred = Role.new({character_name: "Alfred", person_id: michaelcaine.id, movie_id: darkknight.id}) 
alfred.save

rasalghul = Role.new({character_name: "Ra's Al Ghul", person_id: liamneeson.id, movie_id: batmanbegins.id}) 
rasalghul.save

racheldawes = Role.new({character_name: "Rachel Dawes", person_id: katieholmes.id, movie_id: batmanbegins.id}) 
racheldawes.save

racheldawes = Role.new({character_name: "Rachel Dawes", person_id: maggiegyllenhaal.id, movie_id: darkknight.id}) 
racheldawes.save

commissionergordon = Role.new({character_name: "Commissioner Gordon", person_id: garyoldman.id, movie_id: batmanbegins.id}) 
commissionergordon.save

commissionergordon = Role.new({character_name: "Commissioner Gordon", person_id: garyoldman.id, movie_id: darkknight.id}) 
commissionergordon.save

commissionergordon = Role.new({character_name: "Commissioner Gordon", person_id: garyoldman.id, movie_id: darkknightrises.id}) 
commissionergordon.save

joker = Role.new({character_name: "Joker", person_id: heathledger.id, movie_id: darkknight.id}) 
joker.save

harveydent = Role.new({character_name: "Harvey Dent", person_id: aaroneckhart.id, movie_id: darkknight.id}) 
harveydent.save

bane = Role.new({character_name: "Bane", person_id: tomhardy.id, movie_id: darkknightrises.id}) 
bane.save

johnblake = Role.new({character_name: "John Blake", person_id: josephgordonlevitt.id, movie_id: darkknightrises.id}) 
johnblake.save

selinakyle = Role.new({character_name: "Selina Kyle", person_id: annehathaway.id, movie_id: darkknightrises.id}) 
selinakyle.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

for movie in Movie.all
    director = Person.where({id: movie.person_id})[0]
    puts "#{movie.title} #{movie.year_released} #{movie.rated} #{director.name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

for role in Role.all
    movie = Movie.where({id: role.movie_id})[0]
    person = Person.where({id: role.person_id})[0]
    puts "#{movie.title} #{person.name} #{role.character_name}"
end
