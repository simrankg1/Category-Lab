class ProductsController < ApplicationController
	def index
		@products= Product.all  #show all
	end

	def new
		@product= Product.new 
	end

	def create
		product= params.require(:product).permit(:name, :price)
		new_product= Product.create(product)
		#
	end

	def show
		id = params.require(:id)
	    @product = Product.find(id)
	    @categories = @product.categories
	end

	def edit
		id= params[:id]
		@product= Product.find(id)
	end

	def update
		id= params[:id]
		product= Product.find(id)
		updated_info= params.require(:product).permit(:name, :price)
		product.update_attributes(updated_info)
	end

	def destroy
		id= params.require(:id)
		product= Product.find(params[:id])
		product.destroy
	end


end
