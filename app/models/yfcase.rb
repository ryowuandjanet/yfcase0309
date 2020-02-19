class Yfcase < ActiveRecord::Base
	has_many :lands,dependent: :delete_all
	has_many :builds,dependent: :delete_all
	accepts_nested_attributes_for :lands,reject_if: proc { |attributes| attributes['landnumber'].blank? },allow_destroy: true
	accepts_nested_attributes_for :builds,reject_if: proc { |attributes| attributes['buildnumber'].blank? },allow_destroy: true
	validates :casenumber, presence: true
end
