class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :employee_number
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :birthday
      t.integer :daily_rate
      t.string :working_days

      t.timestamps
    end
  end
end

#Sample Data
#employee = Employee.new(employee_number: "BAN-04120-17MAY1976", last_name: "BANA", first_name:"ARNE", middle_name: "ROCERO", birthday: "05/17/1976", daily_rate: "2000.00", working_days: "MWF")
#employee = Employee.new(employee_number: "AFA-00900-01SEP1977", last_name: "AFABLE", first_name:"JOVY", middle_name: "MANSALAPUS", birthday: "09/01/1977", daily_rate: "1500.00", working_days: "TTHS")
