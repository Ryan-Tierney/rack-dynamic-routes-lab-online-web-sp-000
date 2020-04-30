class Application 
  
  
   def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
      if req.path.match(/items\/./)
        item_name = req.path.split("/items").last 
        item = @@items.detect do |i| 
          i.name = item.name 
        end 
      end
  end 