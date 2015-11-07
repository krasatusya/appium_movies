class Movies

  def featured_screen
    @featured_screen ||= FeaturedScreen.new
  end

  def movie_item_screen
    @movie_item_screen ||= MovieItemScreen.new
  end

end