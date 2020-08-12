class DogsController < ApplicationController

    before_action :get_dog, only: [:show]

    def index

        @dogs = Dog.all
        dog_a = @dogs.map {|dog| [dog, dog.employees.count]}.to_h
        dog_b = dog_a.sort_by {|k,v| v}
        dog_c = dog_b.reverse_each.to_h
        @dogs = dog_c.keys

    end

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

    private

    def get_dog
        @dog = Dog.find_by(id: params[:id])
    end

    def employee_params(*args)
        params.require(:dog).permit(:name, :breed, :age)
    end

end
