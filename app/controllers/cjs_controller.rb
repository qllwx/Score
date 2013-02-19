class CjsController < ApplicationController
  # GET /cjs
  # GET /cjs.json
  def index
   # @cjs = Cj.all
   Session(:per_page)=> @per_page||=20
   @cjs=Cj.paginate :page=>params[:page],:per_page=>Session(:per_page)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cjs }
    end
  end

  # GET /cjs/1
  # GET /cjs/1.json
  def show
    @cj = Cj.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cj }
    end
  end

  # GET /cjs/new
  # GET /cjs/new.json
  def new
    @cj = Cj.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cj }
    end
  end

  # GET /cjs/1/edit
  def edit
    @cj = Cj.find(params[:id])
  end

  # POST /cjs
  # POST /cjs.json
  def create
    @cj = Cj.new(params[:cj])

    respond_to do |format|
      if @cj.save
        format.html { redirect_to @cj, notice: 'Cj was successfully created.' }
        format.json { render json: @cj, status: :created, location: @cj }
      else
        format.html { render action: "new" }
        format.json { render json: @cj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cjs/1
  # PUT /cjs/1.json
  def update
    @cj = Cj.find(params[:id])

    respond_to do |format|
      if @cj.update_attributes(params[:cj])
        format.html { redirect_to @cj, notice: 'Cj was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cjs/1
  # DELETE /cjs/1.json
  def destroy
    @cj = Cj.find(params[:id])
    @cj.destroy

    respond_to do |format|
      format.html { redirect_to cjs_url }
      format.json { head :no_content }
    end
  end
end
