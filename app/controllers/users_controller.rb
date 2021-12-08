class UsersController < ApplicationController
    before_action :authenticate_user!

    before_action :set_profile, only: [:profile]

    def profile
      redirect_to root_path, alert: "You are not the current user" if current_user != @profile
    end
    

private

    def set_profile
      @profile = User.find(params[:id])
    end
end