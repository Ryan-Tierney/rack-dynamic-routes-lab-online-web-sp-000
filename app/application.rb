class Application
  
  @@items = []
  
   def call(env)
    req = Rack::Response.new(env)
    resp = Rack::Request.new
    
    @@items = [] 
    
      if req.path.match(/items\/.+/)
        item_name = req.path.split("/items/").last 
        item = @@items.detect { |i| i.name ==  item.name}
        if item 
          resp.write item.price 
        else 
          resp.write "Item not found"
          resp.status 400
        end 
      else 
        resp.write "Route not found"
        resp.status 404
      end
      
    resp.finish 
  end 
end   

