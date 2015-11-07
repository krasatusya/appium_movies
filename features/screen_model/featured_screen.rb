class FeaturedScreen < ScreenActions
  def featured_rows
    find_elements(:xpath, '//UIATableCell')
  end

  def get_movie_title (nbr)
    featured_rows[nbr].attribute("name") #find_element(:xpath, './/UIAStaticText[1]').text
  end



end