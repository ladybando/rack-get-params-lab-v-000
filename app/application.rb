require 'pry'
class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end
    elsif req.path.match(/search/)
      search_term = req.params["q"]
      resp.write handle_search(search_term)
    elsif req.path.match(/cart/)
       items.each do |item|
         return "#{item}\n"
       end
    else
      return "Your cart is empty"
    end
  end
    else
      resp.write "Your cart is empty"
    end

    resp.finish
#binding.pry
  end

  def handle_search(search_term)
    if @@items.include?(search_term)
      return "#{search_term} is one of our items"
    else
      return "Couldn't find #{search_term}"
    end
  end
  
  def cart
    
    items = @@items
    @@cart << items
    
     if @@cart.include?(items)
       items.each do |item|
         return "#{item}\n"
       end
     end
     
    def add
    end
  end
  
end
