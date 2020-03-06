class ObjectbuildPlusasController < ApplicationController
	before_action :set_yfcase
	def index
	
	end

	def new
		@plusa = @objectbuild.plusas.new(personplusa: 0)
	end

	def create
		@plusa = @objectbuild.plusas.new(objectplusa_params)
		if @plusa.save
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

	def objectplusa_params
		params.require(:plusa).permit(:persona,:personplusa)
	end
end
