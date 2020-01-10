class SongwriterEditorialsController < ApplicationController
  before_action :set_songwriter_editorial, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /songwriter_editorials
  # GET /songwriter_editorials.json
  def index
    @songwriter_editorials = SongwriterEditorial.all
  end

  # GET /songwriter_editorials/1
  # GET /songwriter_editorials/1.json
  def show
  end

  # GET /songwriter_editorials/new
  def new
    @songwriter_editorial = SongwriterEditorial.new
  end

  # GET /songwriter_editorials/1/edit
  def edit
  end

  # POST /songwriter_editorials
  # POST /songwriter_editorials.json
  def create
    @songwriter = Songwriter.find(params[:songwriter_id])
    @songwriter_editorial = @songwriter.songwriter_editorial.new(songwriter_editorial_params)

    respond_to do |format|
      if @songwriter_editorial.save
        format.html { redirect_to songwriter_path(@songwriter), notice: 'Songwriter editorial was successfully created.' }
        format.json { render :show, status: :created, location: @songwriter_editorial }
      else
        format.html { render :new }
        format.json { render json: @songwriter_editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songwriter_editorials/1
  # PATCH/PUT /songwriter_editorials/1.json
  def update
    @songwriter = Songwriter.find(params[:songwriter_id])
    @songwriter_editorial = @songwriter.editorials(songwriter_editorial_params)

    respond_to do |format|
      if @songwriter_editorial.update(songwriter_editorial_params)
        format.html { redirect_to songwriter_path(@songwriter), notice: 'Songwriter editorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @songwriter_editorial }
      else
        format.html { render :edit }
        format.json { render json: @songwriter_editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songwriter_editorials/1
  # DELETE /songwriter_editorials/1.json
  def destroy
    @songwriter_editorial = SongwriterEditorial.find(params[:id])
    @songwriter = @songwriter_editorial.songwriter
    @songwriter_editorial.destroy
    respond_to do |format|
      format.html { redirect_to songwriter_path(@songwriter), notice: 'Songwriter editorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_songwriter_editorial
      @songwriter_editorial = SongwriterEditorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def songwriter_editorial_params
      params.require(:songwriter_editorial).permit(:songwriter_id, :link_url, :img_url)
    end
end
