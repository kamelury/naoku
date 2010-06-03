
class ContactController < ApplicationController
  def index
    # render index.html.erb
  end

  def send_mail
    Notifications.deliver_question(params[:email])
    flash[:notice] = "Email was succesfully sent."
    redirect_to :action => "index"
  end
  
  protected
  
  def authorize
  end

end