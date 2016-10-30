class GardenLayoutsController < ApplicationController
  before_action :set_garden_layout, only: [:show, :edit, :update, :destroy]

  # GET /garden_layouts
  # GET /garden_layouts.json
  def index
    @garden_layouts = GardenLayout.all
    render json: @garden_layouts.all.to_json
  end

  # GET /garden_layouts/1
  # GET /garden_layouts/1.json
  def show
  end

  # GET /garden_layouts/new
  def new
    @garden_layout = GardenLayout.new
  end

  # GET /garden_layouts/1/edit
  def edit
  end

  # POST /garden_layouts
  # POST /garden_layouts.json
  def create
    @garden_layout = GardenLayout.new(garden_layout_params)

    respond_to do |format|
      if @garden_layout.save
        format.html { redirect_to @garden_layout, notice: 'Garden layout was successfully created.' }
        format.json { render :show, status: :created, location: @garden_layout }
      else
        format.html { render :new }
        format.json { render json: @garden_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garden_layouts/1
  # PATCH/PUT /garden_layouts/1.json
  def update
    respond_to do |format|
      if @garden_layout.update(garden_layout_params)
        format.html { redirect_to @garden_layout, notice: 'Garden layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @garden_layout }
      else
        format.html { render :edit }
        format.json { render json: @garden_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garden_layouts/1
  # DELETE /garden_layouts/1.json
  def destroy
    @garden_layout.destroy
    respond_to do |format|
      format.html { redirect_to garden_layouts_url, notice: 'Garden layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden_layout
      @garden_layout = GardenLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garden_layout_params
      params.require(:garden_layout).permit(:id, :data, :compeleted)
    end
end
