class VmrequestsController < ApplicationController
  # GET /vmrequests
  # GET /vmrequests.json
  def index
     @search = Vmrequest.search do
      fulltext params[:search]
      paginate  :page => params[:page], :per_page=>6
    end
    @vmrequests = @search.results
# @vmrequests = Vmrequest.page(params[:page]).per(7)   

   
  end

  # GET /vmrequests/1
  # GET /vmrequests/1.json
  def show
    @vmrequest = Vmrequest.find(params[:id])

    
  end

  # GET /vmrequests/new
  # GET /vmrequests/new.json
  def new
    @vmrequest = Vmrequest.new

    
  end

  # GET /vmrequests/1/edit
  def edit
    @vmrequest = Vmrequest.find(params[:id])
  end

  # POST /vmrequests
  # POST /vmrequests.json
  def create
    @vmrequest = Vmrequest.new(params[:vmrequest])

    respond_to do |format|
      if @vmrequest.save
        format.html { redirect_to @vmrequest, notice: 'Vmrequest was successfully created.' }
        format.json { render json: @vmrequest, status: :created, location: @vmrequest }
      else
        format.html { render action: "new" }
        format.json { render json: @vmrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vmrequests/1
  # PUT /vmrequests/1.json
  def update
    @vmrequest = Vmrequest.find(params[:id])

    respond_to do |format|
      if @vmrequest.update_attributes(params[:vmrequest])
        format.html { redirect_to @vmrequest, notice: 'Vmrequest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vmrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vmrequests/1
  # DELETE /vmrequests/1.json
  def destroy
    @vmrequest = Vmrequest.find(params[:id])
    @vmrequest.destroy

    respond_to do |format|
      format.html { redirect_to vmrequests_url }
      format.json { head :no_content }
    end
  end
end
