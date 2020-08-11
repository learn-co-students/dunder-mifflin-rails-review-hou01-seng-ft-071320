class DogsController < ApplicationController
    
    def index
        @dogs = Dog.all 
    end

    def show
        @dog = Dog.find(params[:id])
    end
     
    def index_sorted
        dogs= Dog.all
        #byebug
        @sorted = dogs.sort_by { |k| k.employees.count }.reverse
    end

end
