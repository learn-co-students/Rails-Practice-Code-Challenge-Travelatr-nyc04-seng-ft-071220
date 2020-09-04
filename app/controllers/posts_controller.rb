class PostsController < ApplicationController

    def index
        @posts=Post.all
    end

    def show
        @post=Post.find(params[:id])
      
    end
 
    def add_like
        @post=Post.find(params[:id])
        @like=@post.add_like
      

        redirect_to post_path
    end 


    def new 
        @post=Post.new
    end

    def create
        @post=Post.create(post_params)
        if@post.save
            redirect_to post_path
        else
            redirect_to new_post_path
        end
    end

    def edit
    end
    
    def update
    end

    def destroy
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end
end