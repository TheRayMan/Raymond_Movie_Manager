class Movie < ActiveRecord::Base
  belongs_to :rating
  belongs_to :videoformat

end
