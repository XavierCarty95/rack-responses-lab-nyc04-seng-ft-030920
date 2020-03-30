class Application 
  
  def call(env)
    
    res = Rack::Response.new 
    time = Time.new
    res.write "#{time.hour}\n"
    if time.hour < 12 
      res.write "Good Morning"
    else 
      res.write "Good Afternoon"
    end 
    res.finish
  end 
  
  
end 