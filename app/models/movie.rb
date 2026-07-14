class Movie < ApplicationRecord
  def self.all_ratings
    Movie.distinct.pluck(:rating)
  end

  def self.with_ratings(ratings, order_by)
    list = if ratings.nil? || ratings.empty?
      Movie.all
    else
      Movie.where(rating: ratings)
    end

    if order_by.nil?
      list
    else
      list.order(order_by => :asc)
    end
  end
end
