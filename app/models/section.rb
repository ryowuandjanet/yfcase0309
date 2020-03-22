class Section < ActiveRecord::Base
  belongs_to :township
  has_many :yfcases
  has_many :smallsections
end
