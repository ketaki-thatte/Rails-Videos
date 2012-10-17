class DemoController < ApplicationController
  def hello
    @array=[1,2,3,4,5]
  end

  def index

  end

  def other_hello
    render{}
  end

end
