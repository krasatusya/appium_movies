class MovieItemScreen < ScreenActions

  def featured_button
    find_element(:xpath, '//UIAButton[@name = "Featured"]')
  end

  def movie_title
    find_element(:name, 'title_label').attribute("value")
  end

  def movie_year
    find_element(:name, 'year_label').attribute("value")
  end

  def movie_rating
    find_element(:name, 'rating_label').attribute("value").strip[1..-1].to_f
  end

  def movie_rating_hash (hash)
    hash
  end

  def print_movies (movies_rating_hash, nbr)
    (movies_rating_hash.first nbr.to_i).each{|key, value| puts "#{key} with rating #{value}"}
  end

  def sort_movies (movies_rating_hash, nbr)
    movies_rating_hash.sort_by {|_key, value| value}.reverse.to_h
  end

  def collect_movies_ratings (movies, nbr)
    movie_nbr = nbr.to_i - 1
    movies_rating_hash = Hash.new
    for i in 0..movie_nbr
      scroll_until_element movies[i] #scroll untill if needed movie
      movies[i].click
      movies_rating_hash[movie_title] = movie_rating
      featured_button.click  #return back
    end
    movies_rating_hash
  end

end