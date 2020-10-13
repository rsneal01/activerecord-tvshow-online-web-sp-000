class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end


  def self.most_popular_show
    most_popular_show = Show.where("rating == 10")
  end
  
end