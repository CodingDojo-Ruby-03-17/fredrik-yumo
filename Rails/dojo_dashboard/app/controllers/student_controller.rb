class StudentController < ApplicationController
  # displays a page specific to a given dojo
  # includes a student roster
  def index
    redirect_to 'dojos/:dojo_id'
  end

  # displays a form the user can use to add a new student to a specific dojo
  def new
    @dojo = Dojo.find(params[:dojo_id])
    @all_dojos = Dojo.all
  end

  # creates a new student linked to a given dojo with valid information
  def create
    @student = Student.create(student_params)
    if @student.valid?
      flash[:success] = "New student successfully added!"
      redirect_to "/dojos"
    else
      flash[:error] = @student.errors.full_messages
      redirect_to action: "new", dojo_id: params[:dojo_id]
    end
  end

  # displays info specific to a given student
  # also shows other students enrolled in given student's cohort
  def show
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
    @all_students = Dojo.find(params[:dojo_id]).students.where.not(id:@student.id)
  end

  # displays a form the user can use to edit a given user's information
  def edit
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
    @all_dojos = Dojo.all
  end

  # updates a given user's information
  def update
    Student.find(params[:id]).update(student_params)
    redirect_to "/dojos"
  end

  # destroys a given student
  def destroy
    Student.find(params[:id]).destroy
    redirect_to "/dojos"
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
