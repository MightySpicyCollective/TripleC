class PicturesController < ApplicationController
<<<<<<< HEAD
  # layout false
  before_action :confirm_logged_in
  
=======
  layout false

>>>>>>> 1d20f15900fc6aee83554de8b89ef09b3ed1810f
  def index
    @pictures = Picture.sorted
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new()
  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      flash[:notice] = "Picture created successfully."
      redirect_to(:action => 'index')
    else
      render('new')      
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    

    if @picture.update_attributes(picture_params)
      flash[:notice] = "Picture updated successfully."
      redirect_to(:action => 'show', :id => @picture.id)
    else
      render('edit')      
    end
  end

  def delete
    @picture = Picture.find(params[:id])
  end

  def destroy
    picture = Picture.find(params[:id]).destroy
    flash[:notice] = "Picture '#{picture.url}' destroyed successfully."
    redirect_to(:action => 'index')
  end

  private

    def picture_params
      params.require(:picture).permit(:url, :user_id)
    end

end
