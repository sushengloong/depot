class StoreController < ApplicationController
  def index
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    @products  = Product.all
  end
  
  def reset_counter
    session[:counter] = 0
    redirect_to :action => :index
  end

end
