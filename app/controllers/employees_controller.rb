class EmployeesController < ApplicationController
    #RETRIEVE EMPLOYEE
    def index
        @employees = Employee.all
    end
    
    def show
        @employee = Employee.find(params[:id])
    end

    #CREATE EMPLOYEE
    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
    
        if @employee.save
            redirect_to root_path
        else
            render :new
        end
    end

    #UPDATE EMPLOYEE
    def edit
        @employee = Employee.find(params[:id])
      end
    
    def update
        @employee = Employee.find(params[:id])
    
        if @employee.update(employee_params)
          redirect_to @employee
        else
          render :edit
        end
    end

    #DELETE EMPLOYEE
    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
    
        redirect_to root_path
    end

    private
    def employee_params
      params.require(:employee).permit(:employee_number, :last_name, :first_name, :middle_name, :birthday, :daily_rate, :working_days)
    end
end
