class SpendenWeihnachtsmarktsController < ApplicationController
  before_action :set_spenden_weihnachtsmarkt, only: [:show, :edit, :update, :destroy]

 
  def index
    @spenden_weihnachtsmarkts = SpendenWeihnachtsmarkt.all
  end

  
  def show
  end

  
  def new
    @spenden_weihnachtsmarkt = SpendenWeihnachtsmarkt.new
  end

  def edit
  end

  
  def create
    @spenden_weihnachtsmarkt = SpendenWeihnachtsmarkt.new(spenden_weihnachtsmarkt_params)

    respond_to do |format|
      if @spenden_weihnachtsmarkt.save
        format.html { redirect_to @spenden_weihnachtsmarkt, notice: 'Spende wurde erfolgreich erstellt.' }
        format.json { render :show, status: :created, location: @spenden_weihnachtsmarkt }
      else
        format.html { render :new }
        format.json { render json: @spenden_weihnachtsmarkt.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @spenden_weihnachtsmarkt.update(spenden_weihnachtsmarkt_params)
        format.html { redirect_to @spenden_weihnachtsmarkt, notice: 'Spende wurde erfolgreich aktualisiert' }
        format.json { render :show, status: :ok, location: @spenden_weihnachtsmarkt }
      else
        format.html { render :edit }
        format.json { render json: @spenden_weihnachtsmarkt.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @spenden_weihnachtsmarkt.destroy
    respond_to do |format|
      format.html { redirect_to spenden_weihnachtsmarkts_url, notice: 'Spende wurde erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_spenden_weihnachtsmarkt
      @spenden_weihnachtsmarkt = SpendenWeihnachtsmarkt.find(params[:id])
    end

    def spenden_weihnachtsmarkt_params
      params.require(:spenden_weihnachtsmarkt).permit(:vorname, :nachname, :iban, :summe)
    end
end
