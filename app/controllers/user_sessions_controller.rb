class User_Sessions_Controller < ApplicationController
	def new
		@user = User.new
	end
	def create
		if @user = login(params[:username],params[:password])
			redirect_back_or_to(posts_path, message: "login exitiso")
		else
			flash.now[:alert] = "Algo salio mal con el login"
			render action: :new
		end
	end
	def destroy
		logout
		redirect_to(:usuarios, message: "Logged out")
	end
end