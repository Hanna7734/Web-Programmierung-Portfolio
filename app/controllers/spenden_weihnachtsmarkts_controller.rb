class SpendenWeihnachtsmarktsController < ApplicationController
  before_action :set_spenden_weihnachtsmarkt, only: [:show, :edit, :update, :destroy]

  # GET /spenden_weihnachtsmarkts
  # GET /spenden_weihnachtsmarkts.json
  def index
    @spenden_weihnachtsmarkts = SpendenWeihnachtsmarkt.all
  end

  # GET /spenden_weihnachtsmarkts/1
  # GET /spenden_weihnachtsmarkts/1.json
  def show
  end

  # GET /spenden_weihnachtsmarkts/new
  def new
    @spenden_weihnachtsmarkt = SpendenWeihnachtsmarkt.new
  end

  # GET /spenden_weihnachtsmarkts/1/edit
  def edit
  end

  # POST /spenden_weihnachtsmarkts
  # POST /spenden_weihnachtsmarkts.json
  def create
    @spenden_weihnachtsmarkt = SpendenWeihnachtsmarkt.new(spenden_weihnachtsmarkt_params)

    respond_to do |format|
      if @spenden_weihnachtsmarkt.save
        format.html { redirect_to @spenden_weihnachtsmarkt, notice: 'Spenden weihnachtsmarkt was successfully created.' }
        format.json { render :show, status: :created, location: @spenden_weihnachtsmarkt }
      else
        format.html { render :new }
        format.json { render json: @spenden_weihnachtsmarkt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spenden_weihnachtsmarkts/1
  # PATCH/PUT /spenden_weihnachtsmarkts/1.json
  def update
    respond_to do |format|
      if @spenden_weihnachtsmarkt.update(spenden_weihnachtsmarkt_params)
        format.html { redirect_to @spenden_weihnachtsmarkt, notice: 'Spenden weihnachtsmarkt was successfully updated.' }
        format.json { render :show, status: :ok, location: @spenden_weihnachtsmarkt }
      else
        format.html { render :edit }
        format.json { render json: @spenden_weihnachtsmarkt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spenden_weihnachtsmarkts/1
  # DELETE /spenden_weihnachtsmarkts/1.json
  def destroy
    @spenden_weihnachtsmarkt.destroy
    respond_to do |format|
      format.html { redirect_to spenden_weihnachtsmarkts_url, notice: 'Spenden weihnachtsmarkt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spenden_weihnachtsmarkt
      @spenden_weihnachtsmarkt = SpendenWeihnachtsmarkt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spenden_weihnachtsmarkt_params
      params.require(:spenden_weihnachtsmarkt).permit(:vorname, :nachname, :iban, :summe)
    end
end
