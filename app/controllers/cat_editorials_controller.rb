class CatEditorialsController < ApplicationController
  before_action :set_cat_editorial, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /cat_editorials
  # GET /cat_editorials.json
  def index
    @cat_editorials = CatEditorial.all
  end

  # GET /cat_editorials/1
  # GET /cat_editorials/1.json
  def show
  end

  # GET /cat_editorials/new
  def new
    @cat_editorial = CatEditorial.new
  end

  # GET /cat_editorials/1/edit
  def edit
  end

  # POST /cat_editorials
  # POST /cat_editorials.json
  def create
    @catalogue = Catalogue.find(params[:catalogue_id])
    @cat_editorial = @catalogue.cat_editorial.new(cat_editorial_params)

    respond_to do |format|
      if @cat_editorial.save
        format.html { redirect_to catalogue_path(@catalogue), notice: 'Cat editorial was successfully created.' }
        format.json { render :show, status: :created, location: @cat_editorial }
      else
        format.html { render :new }
        format.json { render json: @cat_editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_editorials/1
  # PATCH/PUT /cat_editorials/1.json
  def update
    @catalogue = Catalogue.find(params[:catalogue_id])
    @cat_editorial = @catalogue.editorials(catalogue_editorial_params)
    respond_to do |format|
      if @cat_editorial.update(cat_editorial_params)
        format.html { redirect_to catalogue_path(@catalogue), notice: 'Cat editorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat_editorial }
      else
        format.html { render :edit }
        format.json { render json: @cat_editorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_editorials/1
  # DELETE /cat_editorials/1.json
  def destroy
    @cat_editorial = CatEditorial.find(params[:id])
    @catalogue = @cat_editorial.catalogue
    @cat_editorial.destroy
    respond_to do |format|
      format.html { redirect_to catalogue_path(@catalogue), notice: 'Cat editorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_editorial
      @cat_editorial = CatEditorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_editorial_params
      params.require(:cat_editorial).permit(:catalogue_id, :link_url, :img_url)
    end
end
