class County < ActiveRecord::Base
	has_many :yfcases
	has_many :township
end
