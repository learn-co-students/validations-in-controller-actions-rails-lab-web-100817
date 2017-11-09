class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    # binding.pry
    @author = Author.create(author_params)
    # binding.pry
    if @author.invalid?
      # binding.pry
      render :new
    else
      # binding.pry
      redirect_to author_path(@author)
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
