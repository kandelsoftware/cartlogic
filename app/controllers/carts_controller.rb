class CartsController < ApplicationController
  def index

   	@cart=cart
  end


  def addcart
   id =params[:id] 
    cart[id] ? cart[id] += 1 : cart[id] = 1
    #if cart[id]
    #   cart[id]+=1
    #else
    #  cart[id]=1
    #end
    flash[:notice] = "Added to cart"
    redirect_to :back
  end

  def remove
  id=params[:id]
  if cart[id]
  cart.keys.include?(id) && cart[id].to_i > 1 ? cart[id]-= 1 : session[:cart].delete(id)
  flash[:notice] = "remove to cart"
  else

  #if cart.keys.include?(id) && cart[id].to_i > 1
  #cart[id]-=1
  #else
  #session[:cart].delete(id)
  #end
  product = Product.find_by_id(id)

  flash[:notice] =  "No more #{product.title}  in cart"
  end
  redirect_to :back
  end


  def cart  
    session[:cart]||= {}
     
  end
end
