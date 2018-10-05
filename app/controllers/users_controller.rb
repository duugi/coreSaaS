class UsersController < AdminController
	before_action :check_authorization, only: [:edit, :update]
	before_action :set_user

	def show
	end

	def edit

	end

	def preferences

	end

	def update

		if @user.update(user_params)
			flash[:success] = "Profile updated"
			redirect_to user_path
		else
			flash.now[:alert] = "Something went wrong. Please try again"
			render :edit
		end
	end

	private

		def check_authorization
			unless current_user.id == params[:id].to_i
				redirect_to root_url
			end
		end

		def set_user
			@user = User.find(params[:id])
		end

		def user_params
			#params.require(:user).permit(:email, :avatar)



			params.require(:user).permit(:email, :avatar, :avatar_cache, :remove_avatar, :language, :time_zone, :date_format, :remember_country_selection, :admin, :is_owner, :is_disable)
			
		end
end