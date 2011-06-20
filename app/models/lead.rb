class Lead < ActionMailer::Base
  
  def confirmation(order, sent_at = Time.now)
    subject    'You have expressed interest in some items on naoku sale'
    recipients order[:email]
    from       'naoku.sale@gmail.com'
    sent_on    sent_at
    
    
    body :items => order.line_items
  end

  def notice(order, sent_at = Time.now)
    subject    "[New lead] from "  << order[:name]
    recipients 'naoku.sale@gmail.com'
    sent_on    sent_at
    
    body :items => order.line_items, 
         :note => order[:note], 
         :sender_name => order[:name], 
         :sender_email => order[:email], 
  end

end


