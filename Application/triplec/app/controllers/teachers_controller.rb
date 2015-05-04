class TeachersController < ApplicationController
  # layout false
  before_action :confirm_logged_in
  
  def index
    @teachers = Teacher.sorted
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new()
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      flash[:notice] = "Teacher created successfully."
      redirect_to(:action => 'index')
    else
      render('new')      
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    

    if @teacher.update_attributes(teacher_params)
      flash[:notice] = "Teacher updated successfully."
      redirect_to(:action => 'show', :id => @teacher.id)
    else
      render('edit')      
    end
  end

  def delete
    @teacher = Teacher.find(params[:id])
  end

  def destroy
    teacher = Teacher.find(params[:id]).destroy
    flash[:notice] = "Teacher '#{teacher.first_name}' destroyed successfully."
    redirect_to(:action => 'index')
  end

  private

    def teacher_params
      params.require(:teacher).permit(:first_name, :last_name, :email, :user_id)
    end

end
