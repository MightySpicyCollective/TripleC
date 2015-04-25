class ProjectsController < ApplicationController
  
  layout false

  def index
    @projects = Project.sorted
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new()
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:notice] = "Project created successfully."
      redirect_to(:action => 'index')
    else
      render('new')      
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    

    if @project.update_attributes(project_params)
      flash[:notice] = "Project updated successfully."
      redirect_to(:action => 'show', :id => @project.id)
    else
      render('edit')      
    end
  end

  def delete
    @project = Project.find(params[:id])
  end

  def destroy
    project = Project.find(params[:id]).destroy
    flash[:notice] = "Project '#{project.name}' destroyed successfully."
    redirect_to(:action => 'index')
  end

  private

    def project_params
      params.require(:project).permit(:name, :user_id)
    end

end
