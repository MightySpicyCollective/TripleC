class SchoolsController < ApplicationController
  # layout false
  before_action :confirm_logged_in
  
  def index
    @schools = School.sorted
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new()
  end

  def create
    @school = School.new(school_params)

    if @school.save
      flash[:notice] = "School created successfully."
      redirect_to(:action => 'index')
    else
      render('new')      
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    

    if @school.update_attributes(school_params)
      flash[:notice] = "School updated successfully."
      redirect_to(:action => 'show', :id => @school.id)
    else
      render('edit')      
    end
  end

  def delete
    @school = School.find(params[:id])
  end

  def destroy
    school = School.find(params[:id]).destroy
    flash[:notice] = "School '#{school.name}' destroyed successfully."
    redirect_to(:action => 'index')
  end

  private

    def school_params
      params.require(:school).permit(:name, :city, :country)
    end
end
