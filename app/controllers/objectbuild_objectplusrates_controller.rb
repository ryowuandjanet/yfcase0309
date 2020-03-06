class ObjectbuildObjectplusratesController < ApplicationController
	before_action :set_yfcase
	def index
	
	end

	def new
		@objectplusrate = @objectbuild.objectplusrates.new(personaplus: 0,personbplus: 0)
	end

	def create
		@objectplusrate = @objectbuild.objectplusrates.new(objectplusrate_params)
		if @objectplusrate.save
			redirect_to yfcase_path(@yfcase)
		else
			render :action => "new"
		end
	end

	protected
	def set_yfcase
		@yfcase=Yfcase.find(params[:yfcase_id])
		@objectbuild=@yfcase.objectbuilds.find(params[:objectbuild_id])
	end

	def objectplusrate_params
		params.require(:objectplusrate).permit(:personaplus,:personbplus,:persona)
	end
end

 # yfcase_objectbuild_objectplusrates GET    /yfcases/:yfcase_id/objectbuilds/:objectbuild_id/objectplusrates(.:format)
 # Couldn't find Objectbuild with 'id'=#<ActionView::Helpers::FormBuilder:0x000000000d529380> [WHERE "objectbuilds"."yfcase_id" = ?]

 # http://localhost:3000/yfcases/35/objectbuilds/26/objectplusrates