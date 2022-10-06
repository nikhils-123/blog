class AuthorsController < ApplicationController
	def index
    @authors = Author.all
  end


  def new 
    @author = Author.new
  end

  def create 
    @author = Author.new(authors_params)
    if @author.save
      redirect_to @author
    else
      render :new , status: :unprocessable_entity 
    end
  end

  def book_creation_by_author
    @author = Author.find_by(id: params[:author_id]) 
    return render json: {message: "Author ID is Invalid"} unless @author.present?
  	@book = @author.books.build(author_params)
  	if @book.save
  		render json: @author
  	else
  		render json: { message: "Something went Wrong "}
  	end
  end


  def author_destroy
    @author  = Author.find_by(id: params[:author_id])
    return render json: {message: "Author ID is Inavlid"} unless @author.present?
    if @author.destroy 
      render json: {message: "Author destroy"} 
    else
      render json:{message: "Something went Wrong"}
    end
  end

  def author_show
    @author = Author.find_by(id: params[:author_id])
    return render json: {message: "Author ID is Inavlid"} unless @author.present?
    render json: @author
  end

  def author_books
    @author = Author.find_by(id: params[:author_id])
    return render json: {message: "Author ID is Inavlid"} unless @author.present?
    render json: @author.books
  end

  def show 
    @author = Author.find(params[:id])
  end
  
  private 
    def author_params
      params.require(:author).permit(:name, :published_at , :name)
    end
end
