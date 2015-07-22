class BuildsController < ApplicationController
  # GET /builds
  # GET /builds.json
  def index
     @search = Build.search do
      fulltext params[:search]
      paginate  :page => params[:page], :per_page=>6
    end
    @builds = @search.results

  end

  # GET /builds/1
  # GET /builds/1.json
  def show
    @build = Build.find(params[:id])
  end

  # GET /builds/new
  # GET /builds/new.json
  def new
    @build = Build.new

   
  end

  # GET /builds/1/edit
  def edit
    @build = Build.find(params[:id])
  end

  # POST /builds
  # POST /builds.json
  def create
    @build = Build.new(params[:build])
    p @build
    p @build.id
    p "one printed"
if request.xhr?
  p "in request"
  # raise "here"
    # respond_to do |format|
      # if @build.save
      @build.save
      p @build.id
      p "saved record      "
        # render :js =>"windows.location='builds/index'"
        redirect_to(:controller=>"builds", :action=>"index")
        # format.html { redirect_to @build, notice: 'Build was successfully created.' }
        # format.json { render json: @build, status: :created, location: @build }
      # else
        # format.html { render action: "new" }
        # format.json { render json: @build.errors, status: :unprocessable_entity }
      # end
    end
  # else
  #   raise "in else"
  #   end

  end

  # PUT /builds/1
  # PUT /builds/1.json
  def update
    @build = Build.find(params[:id])

    respond_to do |format|
      if @build.update_attributes(params[:build])
        format.html { redirect_to @build, notice: 'Build was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @build.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /builds/1
  # DELETE /builds/1.json
  def destroy
    @build = Build.find(params[:id])
    @build.destroy

    respond_to do |format|
      format.html { redirect_to builds_url }
      format.json { head :no_content }
    end
  end
end
