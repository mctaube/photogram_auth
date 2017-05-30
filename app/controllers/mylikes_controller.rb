class MylikesController < ApplicationController
  def index
    @my_likes = Like.where({:user_id => current_user.id})

    render("mylikes/index.html.erb")
  end
end
