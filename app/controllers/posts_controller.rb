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
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(title: params[:post][:title], body: params[:post][:body])

        if @post.save
            flash[:notice] = "Post saved"
            redirect_to posts_path
        else 
            flash[:notice] = "Error saving post"
            render :new, status: :unprocessable_entity
        end
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(title: params[:post][:title], body: params[:post][:title])

        end
    end

    def destroy

    end
end
