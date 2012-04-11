class PackageItemsController < ApplicationController
  # GET /package_items
  # GET /package_items.json
  def index
    @package_items = PackageItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @package_items }
    end
  end

  # GET /package_items/1
  # GET /package_items/1.json
  def show
    @package_item = PackageItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @package_item }
    end
  end

  # GET /package_items/new
  # GET /package_items/new.json
  def new
    @package_item = PackageItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @package_item }
    end
  end

  # GET /package_items/1/edit
  def edit
    @package_item = PackageItem.find(params[:id])
  end

  # POST /package_items
  # POST /package_items.json
  def create
    @package_item = PackageItem.new(params[:package_item])

    respond_to do |format|
      if @package_item.save
        format.html { redirect_to @package_item, notice: 'Package item was successfully created.' }
        format.json { render json: @package_item, status: :created, location: @package_item }
      else
        format.html { render action: "new" }
        format.json { render json: @package_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /package_items/1
  # PUT /package_items/1.json
  def update
    @package_item = PackageItem.find(params[:id])

    respond_to do |format|
      if @package_item.update_attributes(params[:package_item])
        format.html { redirect_to @package_item, notice: 'Package item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @package_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /package_items/1
  # DELETE /package_items/1.json
  def destroy
    @package_item = PackageItem.find(params[:id])
    @package_item.destroy

    respond_to do |format|
      format.html { redirect_to package_items_url }
      format.json { head :no_content }
    end
  end
end
