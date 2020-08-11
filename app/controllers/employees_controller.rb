class EmployeesController < ApplicationController
    
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end


    def create
        @employee = Employee.new(post_params)
        if @employee.valid?
            @employee.save
            redirect_to employee_path(@employee)
        else
            flash[:message] = @employee.errors
            redirect_to '/employees/new'
        end
    end

    def post_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end
end
