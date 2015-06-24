class Movie < ActiveRecord::Base
  belongs_to :rating
  belongs_to :videoformat
  paginates_per 10
end
