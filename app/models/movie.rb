class Movie < ActiveRecord::Base

  belongs_to :director
  has_many :roles

  # def director
  #   Director.find_by(:id => self.director_id)
  # end

end
