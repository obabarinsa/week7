class Movie < ActiveRecord::Base

  def director
    Director.find_by(:id => self.director_id)
  end

end
