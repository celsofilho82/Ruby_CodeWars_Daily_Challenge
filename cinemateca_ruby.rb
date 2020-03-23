movies = {
  Joker: 8.8,
  Maleficent: 7,
  Zombieland: 7.2,
  Inception: 8.8
  }
puts "What would you like to do?"
choice = gets.chomp.downcase
case choice
  when "add"
    puts "What movie do you want to add?"
    title = gets.chomp.capitalize
    puts "What's the rating? (Type a number 0 to 10.)"
    rating = gets.chomp
    if movies[title.to_sym].nil?
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been added with a rating of #{rating}."
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
  when "update"
    puts "What movie do you want to update?"
    title = gets.chomp.capitalize
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      puts "What's the new rating? (Type a number 0 to 10.)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been updated with new rating of #{rating}."
    end
  when "display"
    movies.each{|movie, rating| puts "#{movie}: #{rating}"}
  when "delete"
    puts "What movie do you want to delete?"
    title = gets.chomp.capitalize
    if movies[title.to_sym].nil?
      puts "Movie not found!"
    else
      movies.delete(title.to_sym)
      puts "#{title} has been removed."
    end
  else
    puts "Sorry, I didn't understand you."
end