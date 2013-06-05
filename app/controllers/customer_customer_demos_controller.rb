class CustomerCustomerDemosController < ApplicationController
  # GET /customer_customer_demos
  # GET /customer_customer_demos.json
  def index
    @customer_customer_demos = CustomerCustomerDemo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_customer_demos }
    end
  end

  # GET /customer_customer_demos/1
  # GET /customer_customer_demos/1.json
  def show
    @customer_customer_demo = CustomerCustomerDemo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_customer_demo }
    end
  end

  # GET /customer_customer_demos/new
  # GET /customer_customer_demos/new.json
  def new
    @customer_customer_demo = CustomerCustomerDemo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_customer_demo }
    end
  end

  # GET /customer_customer_demos/1/edit
  def edit
    @customer_customer_demo = CustomerCustomerDemo.find(params[:id])
  end

  # POST /customer_customer_demos
  # POST /customer_customer_demos.json
  def create
    @customer_customer_demo = CustomerCustomerDemo.new(params[:customer_customer_demo])

    respond_to do |format|
      if @customer_customer_demo.save
        format.html { redirect_to @customer_customer_demo, notice: 'Customer customer demo was successfully created.' }
        format.json { render json: @customer_customer_demo, status: :created, location: @customer_customer_demo }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_customer_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_customer_demos/1
  # PUT /customer_customer_demos/1.json
  def update
    @customer_customer_demo = CustomerCustomerDemo.find(params[:id])

    respond_to do |format|
      if @customer_customer_demo.update_attributes(params[:customer_customer_demo])
        format.html { redirect_to @customer_customer_demo, notice: 'Customer customer demo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_customer_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_customer_demos/1
  # DELETE /customer_customer_demos/1.json
  def destroy
    @customer_customer_demo = CustomerCustomerDemo.find(params[:id])
    @customer_customer_demo.destroy

    respond_to do |format|
      format.html { redirect_to customer_customer_demos_url }
      format.json { head :no_content }
    end
  end
end
