class SessionsController < ApplicationController
  def welcome
  end

  def new
  end
  
  def create
  
  end

  def destroy
    session.delete :email
  end
end
