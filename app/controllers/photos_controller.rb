class PhotosController < ApplicationController

	def new
		@product = find_product
	end

	def create
		@product = Product.find_or_initialize_by(name: params[:product][:name])
		@product.photo.attach(params[:product][:photo])
		if @product.save
			redirect_to product_path(@product)
		else
			@errors = @product.errors.full_messages
			render :new
		end
	end

	private

	def find_product
		@product = Product.find_by(id: params[:product_id])
	end

end
