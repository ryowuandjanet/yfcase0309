class Objectbuild < ActiveRecord::Base
  belongs_to :yfcase
  has_many :objectplusrates
  has_many :plusas
end
