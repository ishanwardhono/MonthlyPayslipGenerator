require './app/models/payslip.rb'
require './app/models/employee.rb'

describe Employee do
    it "initialize" do
        payslip = Payslip.new(5,2)
        employee = Employee.new("test", payslip)
        expect(employee.gross_monthly_income).to eq 5
        expect(employee.monthly_income_tax).to eq 2
        expect(employee.net_monthly_income).to eq 3
    end
end