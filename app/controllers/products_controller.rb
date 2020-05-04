class ProductsController < ApplicationController
	def new
		@product = Product.new
		@product.reviews.build
	end

	def show
		if Product.find_by(id: params[:product_id])
			@product = Product.find_by(id: params[:product_id])
		else
			@product = Product.find_by(id: params[:id])
		end
	end

	def create
		@product = Product.find_or_initialize_by(name: params[:product][:name])
		if @product.save
			@product.reviews.create(
				user_id: current_user.id,
				product_id: @product.id,
				rating: params[:product]["reviews_attributes"]["0"]["rating"],
				comment: params[:product]["reviews_attributes"]["0"]["comment"]
				)
			redirect_to product_path(@product)
		else
			@errors = @product.errors.full_messages
			render :new
		end
	end

	private

	def product_params
		params.require(:product).permit(:name, :reviews_attributes)
	end

end
