class Ticket < ApplicationRecord
	has_many :employees_tickets
	has_many :employees, through: :employees_tickets
end
