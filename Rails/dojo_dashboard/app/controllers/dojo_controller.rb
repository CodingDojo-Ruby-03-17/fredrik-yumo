class DojoController < ApplicationController
  # displays a page listing all dojos
  def index
    @dojos = Dojo.all
  end

  # creates a new dojo given valid information
  def create
    @dojo = Dojo.create(dojo_params)
    if @dojo.valid?
      flash[:success] = "New dojo successfully created!"
      redirect_to "/dojos"
    else
      flash[:error] = @dojo.errors.full_messages
      redirect_to "/dojos/new"
    end
  end

  # displays info specific to a given dojo
  # includes a student roster
  def show
    @dojo = Dojo.find(params[:id])
    @students = Dojo.find(params[:id]).students
  end

  # displays a form the user can use to update info specific to a given dojo
  def edit
    @dojo = Dojo.find(params[:id])
  end

  # updates a given dojo's information
  def update
    Dojo.find(params[:id]).update(dojo_params)
    redirect_to "/dojos"
  end

  # destroys a given dojo along with its enrolled students
  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to "/dojos"
  end

  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
