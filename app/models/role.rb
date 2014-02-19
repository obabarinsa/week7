class Role < ActiveRecord::Base

  belongs_to :movie  # .movie
  belongs_to :actor  # .actor

end
# id
# actor_id
# movie_id
# character_name
