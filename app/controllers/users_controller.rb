class UsersController < ApplicationController
    def login
        @user = User.all
        @u = params[:username]
        @p = params[:password]
        @user.each do |u|
            if u.username == @u and u.authenticate(@p)
                @st = u.authenticate(@p)
                session[:user] = u.username
                redirect_to '/users/view' and return
            else 
                @st = false
            end
            
        end
    
    end
    def register
        @user = params[:username]
        @pass = params[:password]
        @b = User.create(:username => @user,:password => @pass)
            
    end
    def view
        @vika = session[:user]
    end
end