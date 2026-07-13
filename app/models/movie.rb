class Movie < ApplicationRecord
  def self.all_ratings
    Movie.distinct.pluck(:rating)
  end

  def self.with_ratings(ratings)
    if ratings.nil? || ratings.empty?
      Movie.all
    else
      Movie.where(rating: ratings)
    end
  end
end
