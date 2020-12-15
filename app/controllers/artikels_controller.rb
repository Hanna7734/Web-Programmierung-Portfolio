class ArtikelsController < ApplicationController
  before_action :set_artikel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: []
  before_action :correct_user, only: [:index, :show, :edit, :update, :destroy]

  
  def index
    @artikels = Artikel.all
  end

 
  def show
  end

  
  def new
    @artikel = current_user.artikel.build
    #@artikel = Artikel.new
  end

  
  def edit
  end

  
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
   
    def set_artikel
      @artikel = Artikel.find(params[:id])
    end

    
    def artikel_params
      params.require(:artikel).permit(:artikelname, :preis, :verkaeufer, :anzahl, :marke, :artikelnummer, :beschreibung, :user_id)
    end
end
