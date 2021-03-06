class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    respond_to do |f|
      if(@post.save)
      f.html {redirect_to "", notice: "Post created!"}
      else
      f.html{redirect_to "", notice: "Error: Post Not Saved"}
      end
      end
    end



  private
  def post_params # allows only certain data to be passes via form
    params.require(:post).permit(:User_id, :content)
  end

end