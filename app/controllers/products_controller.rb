class ProductsController < ApplicationController
	before_action :find_product, only: [:edit, :update]

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
		if @product.save && @product.reviews.present?
			@product.reviews.create(
				user_id: current_user.id,
				product_id: @product.id,
				rating: params[:product]["reviews_attributes"]["0"]["rating"],
				comment: params[:product]["reviews_attributes"]["0"]["comment"],
			)
			redirect_to product_path(@product)
		elsif @product.save
			redirect_to product_path(@product)
		else
			@errors = @product.errors.full_messages
			render :new
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @product.uploads.attach(params[:product][:uploads])
				format.html { redirect_to @product, notice: 'Photo was successfully added.' }
				format.json { render :show, status: :ok, location: @product }
			else
				format.html { render :edit }
				format.json { render json: @product.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	def find_product
		@product = Product.find_by(id: params[:id])
	end

end
