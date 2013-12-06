class MycesController < ApplicationController
  # GET /myces
  # GET /myces.json
  def index
    @myces = Myce.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @myces }
    end
  end

  # GET /myces/1
  # GET /myces/1.json
  def show
    @myce = Myce.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @myce }
    end
  end

  # GET /myces/new
  # GET /myces/new.json
  def new
    @myce = Myce.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @myce }
    end
  end

  # GET /myces/1/edit
  def edit
    @myce = Myce.find(params[:id])
  end

  # POST /myces
  # POST /myces.json
  def create
    @myce = Myce.new(params[:myce])

    respond_to do |format|
      if @myce.save
        format.html { redirect_to @myce, notice: 'Myce was successfully created.' }
        format.json { render json: @myce, status: :created, location: @myce }
      else
        format.html { render action: "new" }
        format.json { render json: @myce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /myces/1
  # PUT /myces/1.json
  def update
    @myce = Myce.find(params[:id])

    respond_to do |format|
      if @myce.update_attributes(params[:myce])
        format.html { redirect_to @myce, notice: 'Myce was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @myce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myces/1
  # DELETE /myces/1.json
  def destroy
    @myce = Myce.find(params[:id])
    @myce.destroy

    respond_to do |format|
      format.html { redirect_to myces_url }
      format.json { head :no_content }
    end
  end
end
