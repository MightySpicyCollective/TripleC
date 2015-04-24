class UsersController < ApplicationController
  
  layout false

  def index
    @users = User.sorted
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
