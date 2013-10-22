class FakeLite
  def self.movie_quote(movie = "Fight Club")
    quote = MovieQuote.new(movie)
    quote.movie_quote
  end
end

class FakeLite::MovieQuote
  def initialize(movie)
    @movie = movie
  end

  def movie_quote
    case @movie
    when "Fight Club"
      "You met me at a very strange time in my life."
    when "The Internship"
      "We're looking at some sort of mental 'Hunger Games' against a bunch of genius kids for just a handful of jobs."
    else
      "No movie found in DB"
    end
  end
end

