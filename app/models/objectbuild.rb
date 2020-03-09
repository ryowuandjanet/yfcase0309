class Objectbuild < ActiveRecord::Base
  belongs_to :yfcase
  has_many :plusrateas
  has_many :plusratebs
end
