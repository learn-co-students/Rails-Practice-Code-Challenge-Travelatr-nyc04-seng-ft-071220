class BloggersController < ApplicationController


    def index
        @bloggers=Blogger.all
    end

    def show
        @blogger=Blogger.find(params[:id])
        @post=Post.all
    end

    def new
        @blogger=Blogger.new
    end
    
    def create
        @blogger=Blogger.create(blogger_params)
        if @blogger.save
            redirect_to blogger_path
        else
            redirect_to new_blogger_path
    end
end

    def edit 
    end

    def update
    end


    def destroy
    end



    private

    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)

    end


end