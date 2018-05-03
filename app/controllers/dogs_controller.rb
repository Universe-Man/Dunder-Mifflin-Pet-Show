class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update]
  def index
    @dogs = sorted_dogs
  end

  def new
    @dog = Dog.new
  end

  def show
    # before_action
  end

  def edit
    # before_action

  end

  def create
    # before_action

  end
  def update

  end

  private
  def sorted_dogs
    Dog.all.sort_by do |dog|
     dog.employees.size
   end.reverse
 end
  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
  def find_dog
    @dog = Dog.find(params[:id])
  end
end
