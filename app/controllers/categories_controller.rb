class CategoriesController < ApplicationController

	def index
	@categories= Category.all
	end

	def new
	@categories= Category.new
	end

	def create
		new_cat= params.require(:category).permit(:name)
		category= Category.create(new_cat)
		redirect_to category 
#XYZ why are we redirecting to category 
	end

	def show
	id = params.require(:id)
    @category = Category.find(id)
    @products = @category.products
    #@category= Category.find(params[:id])

	end

	def edit
		id= params[:id]
		@category= Category.find(id)

		#@category= Category.find(params[:id])
	end

	def update
		id=params[:id]
		category=Category.find(id)
		updated_info=params.require(:category).permit(:name)
		category.update_attributes(updated_info)
		redirect_to category
#XYZ why redirect to category? 
	end

	def destroy
		id= params[:id]
		category= Category.find(params[:id])
		category.destroy

		redirect_to '/categories'
#XYZ why not to category? 
	end


end
