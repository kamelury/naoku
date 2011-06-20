
class ContactController < ApplicationController
  def index
    # render index.html.erb
  end

  def send_mail
    Notifications.deliver_question(params[:email])
    flash[:notice] = "Your message was succesfully sent."
    redirect_to :controller => "store" ,:action => "index"
  end
  
  protected
  
  def authorize
  end

end