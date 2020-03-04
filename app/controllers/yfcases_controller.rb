class YfcasesController < ApplicationController
  include ApplicationHelper
  before_action :set_yfcase, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /yfcases
  # GET /yfcases.json
  def index
    @yfcases = Yfcase.all
  end

  # GET /yfcases/1
  # GET /yfcases/1.json
  def show
    # 地坪總面積 (平方公尺)
    @landtotalarea = @yfcase.lands.map{ |n| [n.landarea.to_f * (n.landholdingpointperson.to_f / n.landholdingpointall.to_f)] }.flatten.sum
    # 建坪總面積 (平方公尺)
    @buildtotalarea = @yfcase.builds.map { |n| [n.buildarea.to_f * (n.buildholdingpointperson.to_f / n.buildholdingpointall.to_f)] }.flatten.sum 

    # 坪價(萬)
    @pingprice1 = @yfcase.floorprice1.to_f / (@buildtotalarea*0.3025).to_f
    @pingprice2 = @yfcase.floorprice2.to_f / (@buildtotalarea*0.3025).to_f
    @pingprice3 = @yfcase.floorprice3.to_f / (@buildtotalarea*0.3025).to_f
    @pingprice4 = @yfcase.floorprice4.to_f / (@buildtotalarea*0.3025).to_f

    # 時價(萬)
    marketpricecount = @yfcase.objectbuilds.count
    marketpricesum=@yfcase.objectbuilds.map { |n| [(testvalue(n.totalprice.to_f / n.buildarea.to_f ,n.plusa,n.plusb))] }.flatten
    @marketprice = marketpricesum.map!{|e| e.to_f}.sum.fdiv(marketpricesum.size) * 10000
    @marketpriceplusa = @yfcase.objectbuilds.map { |n| [n.totalprice.to_f*n.plusa.to_f,n.totalprice.to_f*n.plusb.to_f] }.flatten
  end

  # GET /yfcases/new
  def new
    @yfcase = current_user.yfcases.build(floorprice1:0,floorprice2:0,floorprice3:0,floorprice4:0,margin: 0, click: 0, monitor: 0)
  end

  # GET /yfcases/1/edit
  def edit
  end

  # POST /yfcases
  # POST /yfcases.json
  def create
    @yfcase = current_user.yfcases.build(yfcase_params)
    @yfcase.user=current_user
    @bb = 2.to_f+1.to_f

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
      # @yfcase = Yfcase.find(params[:id])
      @yfcase= current_user.yfcases.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yfcase_params
      params.require(:yfcase).permit(:casenumber, :address, \
        :creditor,:debtor, \
        :auctionday,:auctionlevel,:floorprice,:margin,:click,:monitor,\
        :auctionday1,:floorprice1,:margin1,:click1,:monitor1,\
        :auctionday2,:floorprice2,:margin2,:click2,:monitor2,\
        :auctionday3,:floorprice3,:margin3,:click3,:monitor3,\
        :auctionday4,:floorprice4,:margin4,:click4,:monitor4,\
        :firstsurveydate ,:othersurveydate ,:surveyrecord ,:foreclosureannouncement ,:objectphotos ,:registeredmarketprice,:registeredmarketpricetext ,:registrationmap ,:registrationphoto ,:foreclosurerecord ,:surveyremark, \
        :foreclosureannouncementlink,:foreclosureannouncementtext,:objectphotoslink,:registeredmarketpricelink,:registrationmaplink,:registrationphotolink,:foreclosurerecordlink, \
        :surveyresolution , \
        :county_id, :township_id, \
        :finaldecisionheader ,:finaldecisionconclusion , \
        :finaldecisionsurveyordecide1 ,:finaldecisionsurveyordecide2 ,:finaldecisionsurveyordecide3 ,:finaldecisionsurveyordecide4 ,:finaldecisionsurveyordecide5 , \
        lands_attributes: [:id, :landnumber, :landurl, :landarea, :landholdingpointperson, :landholdingpointall, :_destroy], \
        builds_attributes: [:id, :buildnumber,:buildurl,:buildarea, :buildholdingpointperson, :buildholdingpointall, :buildtype,:usearea, :_destroy], \
        objectbuilds_attributes: [:id, :address, :totalprice, :buildarea, :unitprice, :house, :unit, :floorheight, :surveyora, :surveyorb, :plusa, :plusb, :objectbuildurl, :mesaprice, :_destroy])
    end
end
