class Smallsection < ActiveRecord::Base
  belongs_to :section
  has_many :yfcases
end
