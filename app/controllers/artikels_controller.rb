class ArtikelsController < ApplicationController
  before_action :set_artikel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index,:show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /artikels
  # GET /artikels.json
  def index
    @artikels = Artikel.all
  end

  # GET /artikels/1
  # GET /artikels/1.json
  def show
  end

  # GET /artikels/new
  def new
    @artikel = current_user.artikel.build
    #@artikel = Artikel.new
  end

  # GET /artikels/1/edit
  def edit
  end

  # POST /artikels
  # POST 7artikels.json
  def create
    #@artikel = Artikel.new(artikel_params)
    @artikel = current_user.artikel.build(artikel_params)

    respond_to do |format|
      if @artikel.save
        format.html { redirect_to @artikel, notice: 'Artikel wurde erfolgreich erstellt.' }
        format.json { render :show, status: :created, location: @artikel }
      else
        format.html { render :new }
        format.json { render json: @artikel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artikels/1
  # PATCH/PUT /artikels/1.json
  def update
    respond_to do |format|
      if @artikel.update(artikel_params)
        format.html { redirect_to @artikel, notice: 'Artikel wurde erfolgreich aktualisiert.' }
        format.json { render :show, status: :ok, location: @artikel }
      else
        format.html { render :edit }
        format.json { render json: @artikel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artikels/1
  # DELETE /artikels/1.json
  def destroy
    @artikel.destroy
    respond_to do |format|
      format.html { redirect_to artikels_url, notice: 'Artikel wurde erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end

  def correct_user
    @artikel = current_user.artikel.find_by(id: params[:id])
    redirect_to artikels_path, notice: "Sie dürfen diesen Artikel nicht bearbeiten/löschen" if @artikel.nil?
  end

  private
    # Use callbacks to share common stup or constraints bezween actions.
    def set_artikel
      @artikel = Artikel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artikel_params
      params.require(:artikel).permit(:artikelname, :preis, :verkaeufer, :anzahl, :marke, :artikelnummer, :beschreibung, :user_id)
    end
end
