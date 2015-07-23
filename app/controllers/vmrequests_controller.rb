class VmrequestsController < ApplicationController
  # GET /vmrequests
  # GET /vmrequests.json

  def reports
  end 
  def index
     @search = Vmrequest.search do
      fulltext params[:search]
      paginate  :page => params[:page], :per_page=>6
    end
    @vmrequests = @search.results
# @vmrequests = Vmrequest.page(params[:page]).per(7)   

  end
  def reports_search
    from_date = params[:date][:day]+"-"+params[:date][:month]+"-"+params[:date][:year]
    tos_date = params[:to_date][:day]+"-"+params[:to_date][:month]+"-"+params[:to_date][:year]
    from_search = from_date.to_date
    tos_search = tos_date.to_date
    @vmrequests= Vmrequest.find(:all, :conditions=>["requested_date BETWEEN ? AND ? ", from_search, tos_search ])
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

  def export
    @builds = Vmrequest.all
    respond_to do |format|
      format.html
      format.xlsx
      format.csv { send_data @builds.to_csv }
      format.xls{ send_data @builds.to_csv(col_sep: "\t") }
    end
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

        MbsMailer.confirmation_mail(@vmrequest).deliver
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
