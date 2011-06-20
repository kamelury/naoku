class Lead < ActionMailer::Base
  
  def confirmation(order_params, sent_at = Time.now)
    subject    'You have expressed interest in some items on naoku sale'
    recipients order_params[:address]
    from       'naoku.sale@gmail.com'
    sent_on    sent_at
    
    body :items => order_params[:items]
  end

  def notice(order_params, sent_at = Time.now)
    subject    "New lead from "  << order_params[:name]
    recipients 'naoku.sale@gmail.com'
    sent_on    sent_at
    
    body :items => order_params[:items], 
         :note => order_params[:note], 
         :sender_name => order_params[:name], 
         :sender_email => order_params[:address], 
         :message_subject => order_params[:subject]
  end

end


