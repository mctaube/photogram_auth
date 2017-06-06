class MylikesController < ApplicationController
  def index
    @my_likes = Like.where({:user_id => current_user.id}).order("created_at DESC")

    render("mylikes/index.html.erb")
  end
end
