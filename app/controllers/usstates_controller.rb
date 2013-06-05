class UsstatesController < ApplicationController
  # GET /usstates
  # GET /usstates.json
  def index
    @usstates = Usstate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usstates }
    end
  end

  # GET /usstates/1
  # GET /usstates/1.json
  def show
    @usstate = Usstate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usstate }
    end
  end

  # GET /usstates/new
  # GET /usstates/new.json
  def new
    @usstate = Usstate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usstate }
    end
  end

  # GET /usstates/1/edit
  def edit
    @usstate = Usstate.find(params[:id])
  end

  # POST /usstates
  # POST /usstates.json
  def create
    @usstate = Usstate.new(params[:usstate])

    respond_to do |format|
      if @usstate.save
        format.html { redirect_to @usstate, notice: 'Usstate was successfully created.' }
        format.json { render json: @usstate, status: :created, location: @usstate }
      else
        format.html { render action: "new" }
        format.json { render json: @usstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usstates/1
  # PUT /usstates/1.json
  def update
    @usstate = Usstate.find(params[:id])

    respond_to do |format|
      if @usstate.update_attributes(params[:usstate])
        format.html { redirect_to @usstate, notice: 'Usstate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usstates/1
  # DELETE /usstates/1.json
  def destroy
    @usstate = Usstate.find(params[:id])
    @usstate.destroy

    respond_to do |format|
      format.html { redirect_to usstates_url }
      format.json { head :no_content }
    end
  end
end
