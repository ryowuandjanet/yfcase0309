class Township < ActiveRecord::Base
  belongs_to :county
  has_many :yfcases
  has_many :sections
end
