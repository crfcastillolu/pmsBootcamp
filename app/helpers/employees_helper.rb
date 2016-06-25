module EmployeesHelper
	def full_name(employee)
		return "#{employee.first_name} #{employee.last_name}"
	end	

	def present_employee(employee)
		content_tag("h2") do
			full_name(employee)
		end	
	end	
end
