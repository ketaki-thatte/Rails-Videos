class AuthusersController < ApplicationController
  def new
    @authuser=Authuser.new
  end
  def create
    @authuser= Authuser.new(params[:authuser])
    if @authuser.save
      redirect_to @authuser
    else
      render 'new'
    end
  end
  end

