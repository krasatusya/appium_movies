@movies
Feature: Testing Movies app functionality

  #Create feature file with scenario to count how many total movies
  #are on “Featured screen”. Print out total into consol
  @count_movies
  Scenario: Count How many movies are on "Featured" screen
    Given I navigate to "Featured" screen
    Then I count all available movies and print them to console


  #Write second Scenatio to open First 5 Movies and
  #print Movie title/year and rating into console
  @get_movie_info
  Scenario: Print movie information for first n movies
    Given I navigate to "Featured" screen
    Then I print information for first 5 movies to console


  #(Advanced) Write third Scenatio to collect rating for first 5 movies
  #and print out highest one into console
  @movies_rating
  Scenario: Get movie with the highest raiting from the first 5 movies
    Given I navigate to "Featured" screen
    Then I collect raitings for the first 2 movies and print movie with the highest rating to the console


  #(Personal)Print first 5 movies with the highest rating among all available movies
  @movies_personal
  Scenario: Select movies with the highest raiting from all available movies
    Given I navigate to "Featured" screen
    Then I collect raitings for the all available movies and print 5 movies with the highest rating to the console
