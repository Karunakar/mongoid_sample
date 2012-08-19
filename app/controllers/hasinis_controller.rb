class HasinisController < ApplicationController
  # GET /hasinis
  # GET /hasinis.json
  def index
    @hasinis = Hasini.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hasinis }
    end
  end

  # GET /hasinis/1
  # GET /hasinis/1.json
  def show
    @hasini = Hasini.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hasini }
    end
  end

  # GET /hasinis/new
  # GET /hasinis/new.json
  def new
    @hasini = Hasini.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hasini }
    end
  end

  # GET /hasinis/1/edit
  def edit
    @hasini = Hasini.find(params[:id])
  end

  # POST /hasinis
  # POST /hasinis.json
  def create
    @hasini = Hasini.new(params[:hasini])

    respond_to do |format|
      if @hasini.save
        format.html { redirect_to @hasini, notice: 'Hasini was successfully created.' }
        format.json { render json: @hasini, status: :created, location: @hasini }
      else
        format.html { render action: "new" }
        format.json { render json: @hasini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hasinis/1
  # PUT /hasinis/1.json
  def update
    @hasini = Hasini.find(params[:id])

    respond_to do |format|
      if @hasini.update_attributes(params[:hasini])
        format.html { redirect_to @hasini, notice: 'Hasini was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hasini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hasinis/1
  # DELETE /hasinis/1.json
  def destroy
    @hasini = Hasini.find(params[:id])
    @hasini.destroy

    respond_to do |format|
      format.html { redirect_to hasinis_url }
      format.json { head :no_content }
    end
  end
end
