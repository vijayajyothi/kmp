class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    # @search = Project.search do
    #   fulltext params[:search]
    #   paginate  :page => params[:page], :per_page=>6
    # end
    @projects = Project.all
   # @projects = Project.page(params[:page]).per(7)   
    
  end
  def status_export
    @projects = Project.all
    respond_to do |format|
      format.html
      format.xlsx
      format.csv { send_data @builds.to_csv }
      format.xls{ send_data @projects.to_csv(col_sep: "\t") }
    end
  end  

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])

      if @project.save
        redirect_to(:controller=>'projects', :action =>'index')
        
      else
        format.html { render action: "new" }
      end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
      redirect_to :action => :index, status:303
  end
end
