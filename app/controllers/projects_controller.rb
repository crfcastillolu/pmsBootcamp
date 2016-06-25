class ProjectsController < ApplicationController
	def index
		employee=Employee.find(params[:employee_id])
		@projects_employee=employee.projects
	end	

	def new
		employee=Employee.find(params[:employee_id])
		@projects_employee=employee.projects
	end	

end
