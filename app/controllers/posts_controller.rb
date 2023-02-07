class PostsController < ApplicationController
    def index 
        @posts = Post.all
    end

    def show 
        @post = Post.find(params[:id])
    end

    def new 
        @post = Post.new
    end
    
    def edit 
    
    end

    def create
        @post = Post.new(title: params[:post][:title], content: params[:post][:content])

        if @post.save
            flash[:notice] = "Post saved"
            redirect_to posts_path
        else 
            flash[:notice] = "Error saving post"
            render :new, status: :unprocessable_entity
        end
    end

    def update

    end

    def destroy

    end
end
