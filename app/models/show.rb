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
  
end