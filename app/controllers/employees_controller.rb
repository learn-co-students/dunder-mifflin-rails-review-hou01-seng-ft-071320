class EmployeesController < ApplicationController

    before_action :get_employee, only: [:show]

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        

        if @employee.valid?
            @employee.save
        else
            flash[:message] = @employee.errors.messages
        end

        redirect_to employees_path
    end

    def show
    end

    def edit
    end

    def update
    end

    private

    def get_employee
        @employee = Employee.find_by(id: params[:id])
    end

    def employee_params(*args)
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

end
