class RootController < ApplicationController

    def home 
        puts "in home page"
        @posts = Post.all
        render "home"
    end

    def res
        puts "in res page"
        # render "res"

    end

    def api
        @response = {
            :status => 200,
            :message => "all good"
        }

        render json: @response
    end

    def user
        render json:params
    end

    def add
        # render json: params
        @post=Post.new
        
        @post.title=params[:title]
        @post.des=params[:des]
        @post.save

        @resp = {
            :status => 200, 
            :message => "save in db"
        }

        @post = Post.all
        render "home"
    end

    def delete
        @post = Post.find(params[:id])
        @post.destroy
        @post = Post.all

        render "home"
    end

    def search
        @query = params[:query]    
        @posts = Post.where("posts.title LIKE ?",["%#{@query}%"])
        render "home"
    end

    def update
        @post = Post.find(params[:id])
        @id=params[:id]
        @title = @post.title
        @des = @post.des

        render "update"

    end

    def updatedform
        @post = Post.find(params[:id])
        @post.title = params[:title]
        @post.des = params[:des]

        @post.save
        @posts= Post.all
        render "home"
    end
    
end


