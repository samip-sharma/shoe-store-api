class UsersController < ApplicationController
    def create
        # byebug
        user = User.create(name:params[:name], email:params[:email] , password:params[:password])
        if user.valid?
              render json: auth_response_json(user) # see application_controller.rb
          else
              render json: { errors: user.errors.full_messages }
          end
    end


    def show
        byebug
    end

    def getToken
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            # byebug
          render json: auth_response_json(user) # see application_controller.rb
        else
            # byebug
          render json: { errors: [ "That didn't match any users WE know about" ] }
        end
      end


    private

    def user_params
        params.require(:user).permit(:name,:email,:password)
    end
end
