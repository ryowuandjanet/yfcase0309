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
    currentprice = @yfcase.currentprice.to_f
    bioprice = @yfcase.price.to_f
    @cp = (currentprice / bioprice ).round(4)
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

  def result
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yfcase
      @yfcase = Yfcase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yfcase_params
      params.require(:yfcase).permit(:casenumber, :address, :landurl, :landarea, :landholdingpoint,:buildurl,:buildarea,:buildholdingpoint,:buildtype,:usearea,:auctionday,:auctionlevel,:floorprice,:price,:currentprice,:suggestedincrease,:margin,:creditor,:debtor,lands_attributes: [:id, :landnumber, :_destroy],builds_attributes: [:id, :buildnumber, :_destroy])
    end
end
