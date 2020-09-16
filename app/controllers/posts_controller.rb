class PostsController < ApplicationController
    def index
        @postss = Post.all 
        render json: @post
    end
end
