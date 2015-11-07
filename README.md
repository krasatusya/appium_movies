# appium_movies

1. git clone https://github.com/krasatusya/appium_movies.git
2. cd appium_movies
3. git checkout
4. To run all scenarious you can do either of the following:
    cucumber
    cucumber -p movies
5. To run individual scenarious:
    cucumber -t @count_movies
    cucumber -t @get_movie_info
    cucumber -t @movies_rating
    cucumber -t @movies_personal