class SchoolClassesController < ApplicationController
  
  def show
		@classes = SchoolClass.find(params[:id])
	end

	def new
		@class = SchoolClass.new
	end

	def create
	  @class = Student.new(school_class_params(:title, :description))
	  @class.save
	  redirect_to school_class_path(@class)
	end

	def update
	  @class = SchoolClass.find(params[:id])
	  @class.update(school_class_params(:name))
	  redirect_to school_class_path(@class)
	end

	def edit
	  @class = SchoolClass.find(params[:id])
	end
	
	private
	
	def student_params(*args)
  params.require(:student).permit(*args)
  end
  
end