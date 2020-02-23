class SchoolClassesController < ApplicationController
  
  def index
		@students = Student.all
	end

	def show
		@students = Student.find(params[:id])
	end

	def new
		@post = Student.new
	end

	def create
	  @post = Student.new(post_params(:title, :description))
	  @post.save
	  redirect_to post_path(@post)
	end

	def update
	  @student = Student.find(params[:id])
	  @student.update(post_params(:name))
	  redirect_to post_path(@student)
	end

	def edit
	  @student = Student.find(params[:id])
	end
	
	private
	
	def post_params(*args)
  params.require(:student).permit(*args)
  end
  
end