class SongwritersController < ApplicationController
  before_action :set_songwriter, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /songwriters
  # GET /songwriters.json
  def index
    @songwriters = Songwriter.order(:position).all
  end

  # GET /songwriters/1
  # GET /songwriters/1.json
  def show
  end

  # GET /songwriters/new
  def new
    @songwriter = Songwriter.new
  end

  # GET /songwriters/1/edit
  def edit
  end

  # POST /songwriters
  # POST /songwriters.json
  def create
    @songwriter = Songwriter.new(songwriter_params)

    respond_to do |format|
      if @songwriter.save
        format.html { redirect_to @songwriter, notice: 'Songwriter was successfully created.' }
        format.json { render :show, status: :created, location: @songwriter }
      else
        format.html { render :new }
        format.json { render json: @songwriter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songwriters/1
  # PATCH/PUT /songwriters/1.json
  def update
    respond_to do |format|
      if @songwriter.update(songwriter_params)
        format.html { redirect_to @songwriter, notice: 'Songwriter was successfully updated.' }
        format.json { render :show, status: :ok, location: @songwriter }
      else
        format.html { render :edit }
        format.json { render json: @songwriter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songwriters/1
  # DELETE /songwriters/1.json
  def destroy
    @songwriter.destroy
    respond_to do |format|
      format.html { redirect_to songwriters_url, notice: 'Songwriter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_songwriter
      @songwriter = Songwriter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def songwriter_params
      params.require(:songwriter).permit(:position, :name, :bio, :img_url, :spotify_playlist, :fb, :insta, :twitter, :spotify, :editorial)
    end
end
