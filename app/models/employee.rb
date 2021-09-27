class Employee < ApplicationRecord
    validates :employee_number, presence: true
    validates :last_name, presence: true
    validates :first_name, presence: true
    validates :middle_name, presence: true
    validates :birthday, presence: true
    validates :daily_rate, presence: true
    validates :working_days, presence: true
end
