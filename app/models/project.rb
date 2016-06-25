class Project < ActiveRecord::Base
	#HBTM
	has_and_belongs_to_many :employees
end
