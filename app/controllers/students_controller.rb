class StudentsController < ApplicationController
  
  def new
    
  end
  
  def create
    
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
   def index
		@students = Student.all
	end

	def show
		@students = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
	  @student = Student.new(student_params(:title, :description))
	  @student.save
	  redirect_to student_path(@student)
	end

	def update
	  @student = Student.find(params[:id])
	  @student.update(student_params(:name))
	  redirect_to student_path(@student)
	end

	def edit
	  @student = Student.find(params[:id])
	end
	
	private
	
	def student_params(*args)
  params.require(:student).permit(*args)
  end
  
end