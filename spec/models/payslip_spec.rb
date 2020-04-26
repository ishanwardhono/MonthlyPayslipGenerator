require './app/models/payslip.rb'

describe Payslip do
    it "initialize" do
        payslip = Payslip.new(5,2)
        expect(payslip.gross_monthly_income).to eq 5
        expect(payslip.monthly_income_tax).to eq 2
        expect(payslip.net_monthly_income).to eq 3
    end
    it "convert to currency string" do
        payslip = Payslip.new(5,2)
        payslip.toString()
        expect(payslip.gross_monthly_income).to eq "$5.00"
        expect(payslip.monthly_income_tax).to eq "$2.00"
        expect(payslip.net_monthly_income).to eq "$3.00"
    end
    it "convert to currency string, test case annual_salary = 60000" do
        payslip = Payslip.new(5000,500)
        payslip.toString()
        expect(payslip.gross_monthly_income).to eq "$5000.00"
        expect(payslip.monthly_income_tax).to eq "$500.00"
        expect(payslip.net_monthly_income).to eq "$4500.00"
    end
    it "convert to currency string, test case annual_salary = 200000" do
        payslip = Payslip.new(16666.666666666668,4000)
        payslip.toString()
        expect(payslip.gross_monthly_income).to eq "$16666.67"
        expect(payslip.monthly_income_tax).to eq "$4000.00"
        expect(payslip.net_monthly_income).to eq "$12666.67"
    end
    it "convert to currency string, test case annual_salary = 80150" do
        payslip = Payslip.new(6679.166666666667,837.0833333333334)
        payslip.toString()
        expect(payslip.gross_monthly_income).to eq "$6679.17"
        expect(payslip.monthly_income_tax).to eq "$837.08"
        expect(payslip.net_monthly_income).to eq "$5842.08"
    end
end