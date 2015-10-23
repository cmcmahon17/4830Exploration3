movies = {
    "Finding Nemo" => 4
}
choice = nil

while choice != 'end'
puts "MY MOVIE LIST:"
puts "ADD, UPDATE, DISPLAY, DELETE, END"
puts "What would you like to do?"
choice = gets.chomp
case choice
when 'add'
    puts "What movie do you want to add?"
    title = gets.chomp
    if movies[title.intern].nil?
        puts "What's the rating? (0-4)"
        rating = gets.chomp
        movies[title.intern] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}."
    else
        "This movie & title already exsist."
    end
when 'update'
    puts "Select a movie to update: "
    title = gets.chomp
    if movies[title] == nil
        puts "Movie not found"
    else
        puts "Please update rating (0-4): "
        rating = gets.chomp
        movies[title]=rating
    end
when 'display'
    movies.each{|movie, rating| puts "#{movie}: #{rating}"}
when 'delete'
    puts "Select a movie to delete: "
    title=gets.chomp
    if movies[title] == nil
        puts "ERROR!"
    else
        movies.delete(title)
    end
when 'end'
	abort("Good-bye")
else
    puts "ERROR! Please choose one of the following: ADD, UPDATE, DISPLAY, DELETE, END."
    choice = gets.chomp
end
end
