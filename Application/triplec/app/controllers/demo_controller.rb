class DemoController < ApplicationController

<<<<<<< HEAD
  # layout false
=======
  layout false
>>>>>>> 1d20f15900fc6aee83554de8b89ef09b3ed1810f

  def index
  end

  def hello
    # render('index')
    @array = [1,2,3,4,5]
    @id = params['id'].to_i
    @page = params[:page].to_i
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
    redirect_to("http://lynda.com")
  end

end
