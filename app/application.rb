class Application 
  
  def env 
    
    response = Rack::Response.new 
    time = Time.now()
    if time.hour > 12 && time.hour < 24
      res.write "Good Afternoon"
    else 
      res.write "Good Morning"
  end 
  
  
end 