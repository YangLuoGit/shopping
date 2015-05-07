class CartsController < ApplicationController

	def create
		product = Product.find(params[:product_id])
		line_item = current_cart.add_line_item(product)
		line_item.save!


		redirect_to :back
	end

	#如何個別刪除
	def destroy
		current_cart.destroy
		redirect_to root_path
	end
	
	


	

end