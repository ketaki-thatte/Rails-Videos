class DemoController < ApplicationController
  def hello
    @array=[1,2,3,4,5]
    @id=params[:id]
    @page=params[:page].to_i
  end

  def index
   #render ('demo/hello')
  end

  def other_hello

  end

end
