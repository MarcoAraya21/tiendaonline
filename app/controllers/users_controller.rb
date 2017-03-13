class UsersController < ApplicationController
	  before_action  only: [:show,:destroy]

	def index
		@users = User.where(:type_id => 2)
	end
	def show
		@user = User.find(params[:id])
		#Category.where("id = ?",params[:id])
	end
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to principal_path
	end

end