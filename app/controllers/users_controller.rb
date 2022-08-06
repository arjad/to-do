class UsersController < ApplicationController

    def new
        #by default it render "new"
        render "new"
    end

    def create
        email = params[:username]
        pass = params[:pass]

        User.create(
            :email => email,
            :password_digest => pass
        )
        response = {
            :success => true
        }


        render json: response

    end

    def destroy
    end

    
end
