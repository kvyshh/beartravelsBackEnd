class UsersController < ApplicationController

    get "/users" do
        users = User.all
        users.to_json
      end
    
      get "/users/:id" do
        id = User.first
        id.to_json
      end

end