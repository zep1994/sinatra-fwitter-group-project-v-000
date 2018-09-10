class UsersController < ApplicationController
  get '/users/:slug' do
    @user = User.find_by(slug: params[:slug])
    if @user
      erb :"/users/show"
    else
      redirect '/'
    end
  end

end
