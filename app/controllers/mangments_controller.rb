class MangmentsController < ApplicationController
  # GET /mangments
  # GET /mangments.json
  def index
    @mangments = Mangment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mangments }
    end
  end

  # GET /mangments/1
  # GET /mangments/1.json
  def show
    @mangment = Mangment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mangment }
    end
  end

  # GET /mangments/new
  # GET /mangments/new.json
  def new
    @mangment = Mangment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mangment }
    end
  end

  # GET /mangments/1/edit
  def edit
    @mangment = Mangment.find(params[:id])
  end

  # POST /mangments
  # POST /mangments.json
  def create
    @mangment = Mangment.new(params[:mangment])

    respond_to do |format|
      if @mangment.save
        format.html { redirect_to @mangment, notice: 'Mangment was successfully created.' }
        format.json { render json: @mangment, status: :created, location: @mangment }
      else
        format.html { render action: "new" }
        format.json { render json: @mangment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mangments/1
  # PUT /mangments/1.json
  def update
    @mangment = Mangment.find(params[:id])

    respond_to do |format|
      if @mangment.update_attributes(params[:mangment])
        format.html { redirect_to @mangment, notice: 'Mangment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mangment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mangments/1
  # DELETE /mangments/1.json
  def destroy
    @mangment = Mangment.find(params[:id])
    @mangment.destroy

    respond_to do |format|
      format.html { redirect_to mangments_url }
      format.json { head :no_content }
    end
  end
end
