class AuthorsController < ApplicationController
     def index
        @authors = Author.all
    end

    def show
        @author = Author.find(params[:id])
    end

    def new
        @author = Author.new
    end

    def create
        movie = Author.create(author_params)
        redirect_to author_path(author.id)
    end

    def edit
        @author = Author.find(params[:id])
    end

    def update
        author = Author.find(params[:id])
        author.update(author_params)

        redirect_to author_path(author.id)
    end
    
    def author_params
        params.require(:author).permit(:name, :phone_number)
    end 
end