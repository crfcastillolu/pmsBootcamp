class EmployeesController < ApplicationController
	def index
		@employees=Employee.all
	end

	def show
		@employee=Employee.find(params[:id])
	end

	def new
		@employee=Employee.new
	end	

	def create
		@employee=Employee.new(employee_params)
		if @employee.save
			redirect_to @employee, flash: {success: "Employee registered successfully"}
		else
			redirect_to "/employees/new", flash: {error: "Try again"}
		end	
	end

	private
	def employee_params
		params.require(:employee).permit(:first_name, :last_name, :email)
	end	

end
