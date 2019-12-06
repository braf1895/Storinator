class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :checkAdmin!
  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename=items.xlsx"
      }
      format.html { render :index }
    @loc = Location.all
  end
end

  # GET /items/1
  # GET /items/1.json
  def show
    #@stor = Location.find_by_id(Item.)
    @loc = Location.all
  end

  # GET /items/new
  def new
    @item = Item.new
    @loc = Location.all
  end

  # GET /items/1/edit
  def edit
    @loc = Location.all
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @loc = Location.all
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @loc = Location.all
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:iName, :locations_id, :iAvail, :iUsed, :iTotal, :iDesc)
    end
end
