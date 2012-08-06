class DesksController < ApplicationController
  # GET /desks
  # GET /desks.json
  def index
    @desks = Desk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @desks }
    end
  end

  # GET /desks/1
  # GET /desks/1.json
  def show
    @desk = Desk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @desk }
    end
  end

  # GET /desks/new
  # GET /desks/new.json
  def new
    @desk = Desk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @desk }
    end
  end

  # GET /desks/1/edit
  def edit
    @desk = Desk.find(params[:id])
  end

  # POST /desks
  # POST /desks.json
  def create
    @desk = Desk.new(params[:desk])

    respond_to do |format|
      if @desk.save
        format.html { redirect_to @desk, notice: 'Desk was successfully created.' }
        format.json { render json: @desk, status: :created, location: @desk }
      else
        format.html { render action: "new" }
        format.json { render json: @desk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /desks/1
  # PUT /desks/1.json
  def update
    @desk = Desk.find(params[:id])

    respond_to do |format|
      if @desk.update_attributes(params[:desk])
        format.html { redirect_to @desk, notice: 'Desk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @desk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desks/1
  # DELETE /desks/1.json
  def destroy
    @desk = Desk.find(params[:id])
    @desk.destroy

    respond_to do |format|
      format.html { redirect_to desks_url }
      format.json { head :no_content }
    end
  end
end
