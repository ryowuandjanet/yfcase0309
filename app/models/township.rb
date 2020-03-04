class Township < ActiveRecord::Base
  belongs_to :county
  has_many :yfcases
end
