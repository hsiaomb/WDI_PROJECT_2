class UsersController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	def index
	  @users = User.all
	end

	def show
	  @user = User.find(params[:id])
	end

	def delete_product
	  @user = current_user
	  @product = @user.products.find(params[:product_id])
	  @user.products.delete(@product)

	  redirect_to current_user
	end
end
