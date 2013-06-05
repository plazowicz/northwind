class CustomerDemographicsController < ApplicationController
  # GET /customer_demographics
  # GET /customer_demographics.json
  def index
    @customer_demographics = CustomerDemographic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_demographics }
    end
  end

  # GET /customer_demographics/1
  # GET /customer_demographics/1.json
  def show
    @customer_demographic = CustomerDemographic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_demographic }
    end
  end

  # GET /customer_demographics/new
  # GET /customer_demographics/new.json
  def new
    @customer_demographic = CustomerDemographic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_demographic }
    end
  end

  # GET /customer_demographics/1/edit
  def edit
    @customer_demographic = CustomerDemographic.find(params[:id])
  end

  # POST /customer_demographics
  # POST /customer_demographics.json
  def create
    @customer_demographic = CustomerDemographic.new(params[:customer_demographic])

    respond_to do |format|
      if @customer_demographic.save
        format.html { redirect_to @customer_demographic, notice: 'Customer demographic was successfully created.' }
        format.json { render json: @customer_demographic, status: :created, location: @customer_demographic }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_demographics/1
  # PUT /customer_demographics/1.json
  def update
    @customer_demographic = CustomerDemographic.find(params[:id])

    respond_to do |format|
      if @customer_demographic.update_attributes(params[:customer_demographic])
        format.html { redirect_to @customer_demographic, notice: 'Customer demographic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_demographic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_demographics/1
  # DELETE /customer_demographics/1.json
  def destroy
    @customer_demographic = CustomerDemographic.find(params[:id])
    @customer_demographic.destroy

    respond_to do |format|
      format.html { redirect_to customer_demographics_url }
      format.json { head :no_content }
    end
  end
end
