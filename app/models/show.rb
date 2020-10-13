class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end


  def self.most_popular_show
    most_popular_show = Show.find_by rating: self.highest_rating
  end
  
  def self.lowest_rating
    lowest_rating = Show.minimum(:rating)
  end
  
  def self.least_popular_show
    least_popular_show = Show.find_by rating: self.lowest_rating
  end
  
  def self.ratings_sum
    ratings_sum = Show.sum(:rating)
  end
  
  def self.popular_shows
    popular_shows = Show.where("rating > 5")
  end
  
  def self.shows_by_alphabetical_order
    shows_by_alphabetical_order = Show.order(:name)
  end
end