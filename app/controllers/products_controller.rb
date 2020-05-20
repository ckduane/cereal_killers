class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		if Product.find_by(id: params[:product_id])
			@product = Product.find_by(id: params[:product_id])
		else
			@product = Product.find_by(id: params[:id])
		end
	end
	
	def new
		@product = Product.new
		@product.reviews.build
	end


	def create
		@product = Product.find_or_initialize_by(name: params[:product][:name])
		@product.uploads.attach(params[:product][:uploads])
		if @product.save
			@product.reviews.create(
				user_id: current_user.id,
				product_id: @product.id,
				rating: params[:product]["reviews_attributes"]["0"]["rating"],
				comment: params[:product]["reviews_attributes"]["0"]["comment"],
			)
			redirect_to product_path(@product)
		else
			@errors = @product.errors.full_messages
			render :new
		end
	end

end
