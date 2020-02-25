class YfcasesController < ApplicationController
  before_action :set_yfcase, only: [:show, :edit, :update, :destroy]

  # GET /yfcases
  # GET /yfcases.json
  def index
    @yfcases = Yfcase.all
  end

  # GET /yfcases/1
  # GET /yfcases/1.json
  def show
    buildholdingpoint = @yfcase.buildholdingpointperson.to_f / @yfcase.buildholdingpointall.to_f
    floorprice = @yfcase.floorprice.to_f
    buildarea = @yfcase.buildarea.to_f 
    currentprice = @yfcase.currentprice.to_f
    
    @buildarea = buildarea * 0.3025
    @buildholdingpointarea = @buildarea * buildholdingpoint
    @buildholdingpointaream2 = buildarea * buildholdingpoint

    @objectbuilds=@yfcase.objectbuilds
    @ojbectbuildaverage=@objectbuilds.map{|n| [ (n.totalprice/n.buildarea.to_f) * ((n.plusb.to_f+n.plusa.to_f) / 2 )*10000] }.sum.sum.fdiv(@yfcase.objectbuilds.count)


    @buildprice = (floorprice / (@buildarea * buildholdingpoint)).round(0)
    @cp = (@ojbectbuildaverage / @buildprice ).round(4)

  end

  # GET /yfcases/new
  def new
    @yfcase = Yfcase.new
  end

  # GET /yfcases/1/edit
  def edit
  end

  # POST /yfcases
  # POST /yfcases.json
  def create
    @yfcase = Yfcase.new(yfcase_params)

    respond_to do |format|
      if @yfcase.save
        format.html { redirect_to @yfcase, notice: 'Yfcase was successfully created.' }
        format.json { render :show, status: :created, location: @yfcase }
      else
        format.html { render :new }
        format.json { render json: @yfcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yfcases/1
  # PATCH/PUT /yfcases/1.json
  def update
    respond_to do |format|
      if @yfcase.update(yfcase_params)
        format.html { redirect_to @yfcase, notice: 'Yfcase was successfully updated.' }
        format.json { render :show, status: :ok, location: @yfcase }
      else
        format.html { render :edit }
        format.json { render json: @yfcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yfcases/1
  # DELETE /yfcases/1.json
  def destroy
    @yfcase.destroy
    respond_to do |format|
      format.html { redirect_to yfcases_url, notice: 'Yfcase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.k
    def set_yfcase
      @yfcase = Yfcase.find(params[:id])
    end

    def meantest
      @plusa = Yfcase.find(prarms[:id]).objectbuilds
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yfcase_params
      params.require(:yfcase).permit(:casenumber, :address, \
        :creditor,:debtor, \
        :buildurl,:buildarea, :buildholdingpointperson, :buildholdingpointall, :buildtype,:usearea, \
        :auctionday,:auctionlevel,:floorprice,:price,:currentprice,:suggestedincrease,:margin,:click,:monitor,\
        :firstsurveydate ,:othersurveydate ,:surveyrecord ,:foreclosureannouncement ,:objectphotos ,:registeredmarketprice ,:registrationmap ,:registrationphoto ,:foreclosurerecord ,:surveyremark, \
        :foreclosureannouncementlink,:objectphotoslink,:registeredmarketpricelink,:registrationmaplink,:registrationphotolink,:foreclosurerecordlink, \
        :surveyresolution , \
        :finaldecisionheader ,:finaldecisionconclusion , \
        :finaldecisionsurveyordecide1 ,:finaldecisionsurveyordecide2 ,:finaldecisionsurveyordecide3 ,:finaldecisionsurveyordecide4 ,:finaldecisionsurveyordecide5 , \
        lands_attributes: [:id, :landnumber, :landurl, :landarea, :landholdingpointperson, :landholdingpointall, :_destroy],builds_attributes: [:id, :buildnumber, :_destroy], \
        objectbuilds_attributes: [:id, :address, :totalprice, :buildarea, :unitprice, :house, :unit, :floorheight, :surveyora, :surveyorb, :plusa, :plusb, :objectbuildurl, :_destroy])
    end
end
