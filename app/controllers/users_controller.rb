class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(whitelist)
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "Welcome to Message Me, #{@user.username}. Your account has been successfully created."
            redirect_to root_path
        else
            render 'new'
        end
    end

    private

    def whitelist
        params.require(:user).permit(:username, :password)
    end

end