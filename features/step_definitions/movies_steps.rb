Given(/^I navigate to "([^"]*)" screen$/) do |page_name|
  expect (featured_screen.is_on_correct_page(page_name)) == true
end

Then(/^I count all available movies and print them to console$/) do
  puts "There are #{featured_screen.featured_rows.size} movies on Featured screen"
end

Then(/^I print information for first (\d+) movies to console$/) do |nbr|
  movies = movie_item_screen.collect_movies_ratings(featured_screen.featured_rows, nbr)
  movie_item_screen.print_movies( movies, (movies.size - 1) )
end

Then(/^I collect raitings for the first (\d+) movies and print movie with the highest rating to the console$/) do |nbr|
  movies = movie_item_screen.collect_movies_ratings(featured_screen.featured_rows, nbr)
  movie_item_screen.print_movies( movie_item_screen.sort_movies(movies, (movies.size - 1)), 1 )
end

Then(/^I collect raitings for the all available movies and print (\d+) movies with the highest rating to the console$/) do |nbr|
  movies = movie_item_screen.collect_movies_ratings(featured_screen.featured_rows,featured_screen.featured_rows.size)
  movie_item_screen.print_movies( movie_item_screen.sort_movies(movies, (movies.size - 1)), nbr )
end



