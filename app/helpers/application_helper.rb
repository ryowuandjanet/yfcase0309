module ApplicationHelper
	# 平方公尺換算成坪數
	def squaremetertoping(meter)
		result=meter * 0.3025
		return result
	end

	# 計算持分
	def holdingpoint(arg1,arg2)
		result = arg1.to_f / arg2.to_f
		return result
	end

	# 計算面積 ( 面積 , 持分[個人] , 持分[所有] , 倍數[平方公尺=0.3025坪] ) 
	def area(area,holdingpointperson,holdingpointall,multiple)
		result = area.to_f * multiple * (holdingpointperson.to_f / holdingpointall.to_f)
		return result 
	end

	# 計算坪價 ( 底價 , 建坪[坪] , 持分[個人] , 持分[所有] ) 
	def unitprice(floorprice,buildarea,buildholdingpointperson,buildholdingpointall)
		result= floorprice / (buildarea * 0.3025*(buildholdingpointperson.to_f / buildholdingpointall.to_f))
		return result
	end

	# 計算時價( 總價 , 坪數[坪] , 加成A , 加成B , 筆數 )
	def marketprice(object,totalprice,buildarea,plusa,plusb)
		# 計算坪價
		unitprice = totalprice.to_f / buildarea.to_f
		plus = (plusa.to_f + plusb.to_f) / 2
		return unitprice * plus
	end

	# 計算建議加價費用 ( 點閱 , 監控  ) 
	def suggestedincrease(click,monitor)
		result=((((click.to_f-100)/100).abs.ceil)*(monitor.to_f/100*3))
		if result > 0.15
			return  0.15
		else
			return result
		end
	end	

	def averagebetween(arga,argb)
		return (arga+argb) / 2
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
