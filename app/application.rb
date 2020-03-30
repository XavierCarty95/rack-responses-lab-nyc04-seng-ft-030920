class Application 
  
  def call(env)
    
    res = Rack::Response.new 
    time = Time.now
    res.write "#{time.hour}\n"
    if time.hour >= 12 
      res.write "Good Afternoon"
    else 
      res.write "Good Morning"
    end 
    res.finish
  end 
  
  
end 