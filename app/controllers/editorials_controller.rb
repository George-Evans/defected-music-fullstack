class EditorialsController < ApplicationController
  before_action :set_editorial, only: [:show, :edit, :update, :destroy]

  # GET /editorials
  # GET /editorials.json
  def index
    @editorials = Editorial.all
  end

  # GET /editorials/1
  # GET /editorials/1.json
  def show
  end

  # GET /editorials/new
  def new
    @editorial = Editorial.new
  end

  # GET /editorials/1/edit
  def edit
  end

  # POST /editorials
  # POST /editorials.json
  def create
    @artist = Artist.find(params[:artist_id])
    @editorial = @artist.editorial.new(editorial_params)

    respond_to do |format|
      if @editorial.save
        format.html { redirect_to artist_path(@artist), notice: 'Editorial was successfully created.' }
        format.json { render :show, status: :created, location: @editorial }
      else
        format.html { render :new }
        format.json { render json: @editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /editorials/1
  # PATCH/PUT /editorials/1.json
  def update
    @artist = Artist.find(params[:artist_id])
    @editorial = @artist.editorials(editorial_params)

    respond_to do |format|
      if @editorial.update(editorial_params)
        format.html { redirect_to artist_path(@artist), notice: 'Editorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @editorial }
      else
        format.html { render :edit }
        format.json { render json: @editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /editorials/1
  # DELETE /editorials/1.json
  def destroy
    @editorial = Editorial.find(params[:id])
    @artist = @editorial.artist
    @editorial.destroy
    respond_to do |format|
      format.html { redirect_to artist_path(@artist), notice: 'Editorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_editorial
      @editorial = Editorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def editorial_params
      params.require(:editorial).permit(:artist_id, :link_url, :img_url)
    end
end
