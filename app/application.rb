class Application 
  
  def call(env)
    
    res = Rack::Response.new 
    time = Time.now()
    res.write "#{time.hour}"
    if time.hour > 12 && time.hour < 24
      res.write "Good Afternoon"
    else 
      res.write "Good Morning"
    end 
    res.finish
  end 
  
  
end 