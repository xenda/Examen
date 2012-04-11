class AllowedPackagesController < ApplicationController
  # GET /allowed_packages
  # GET /allowed_packages.json
  def index
    @allowed_packages = AllowedPackage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @allowed_packages }
    end
  end

  # GET /allowed_packages/1
  # GET /allowed_packages/1.json
  def show
    @allowed_package = AllowedPackage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @allowed_package }
    end
  end

  # GET /allowed_packages/new
  # GET /allowed_packages/new.json
  def new
    @allowed_package = AllowedPackage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @allowed_package }
    end
  end

  # GET /allowed_packages/1/edit
  def edit
    @allowed_package = AllowedPackage.find(params[:id])
  end

  # POST /allowed_packages
  # POST /allowed_packages.json
  def create
    @allowed_package = AllowedPackage.new(params[:allowed_package])

    respond_to do |format|
      if @allowed_package.save
        format.html { redirect_to @allowed_package, notice: 'Allowed package was successfully created.' }
        format.json { render json: @allowed_package, status: :created, location: @allowed_package }
      else
        format.html { render action: "new" }
        format.json { render json: @allowed_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /allowed_packages/1
  # PUT /allowed_packages/1.json
  def update
    @allowed_package = AllowedPackage.find(params[:id])

    respond_to do |format|
      if @allowed_package.update_attributes(params[:allowed_package])
        format.html { redirect_to @allowed_package, notice: 'Allowed package was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @allowed_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allowed_packages/1
  # DELETE /allowed_packages/1.json
  def destroy
    @allowed_package = AllowedPackage.find(params[:id])
    @allowed_package.destroy

    respond_to do |format|
      format.html { redirect_to allowed_packages_url }
      format.json { head :no_content }
    end
  end
end
