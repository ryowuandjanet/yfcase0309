module ApplicationHelper
	def user_gender(gender)
		if gender == 1
			"男"
		elsif gender == 0
			"女"
		else
			"不想說"
		end
	end

	def divtwo(arg1,arg2)
		result = arg1 / arg2
		return result
	end

	def buildplus(objectbuild,buildarea,plusa,plusb)
		plus = ( plusa + plusb ) / 2
		result = objectbuild / buildarea * plus
		return result
	end

	def nowprice(objecta,objectb)
		result= ( objecta + objectb ) / 2 * 10000
		return result
	end
end
