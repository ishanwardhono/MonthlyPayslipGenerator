require "./app/models/generate_payslip.rb"

describe Employee do
    it "initialize from integer" do
        generator = GeneratePayslip.new(12)
        generatedPayslip = generator.taxComputation()
        expect(generatedPayslip.gross_monthly_income).to eq 1
        expect(generatedPayslip.monthly_income_tax).to eq 0
        expect(generatedPayslip.net_monthly_income).to eq 1
    end
    it "initialize from string" do
        generator = GeneratePayslip.new("12")
        generatedPayslip = generator.taxComputation()
        expect(generatedPayslip.gross_monthly_income).to eq 1
        expect(generatedPayslip.monthly_income_tax).to eq 0
        expect(generatedPayslip.net_monthly_income).to eq 1
    end
    it "generate test case annual_salary = 60000" do
        generator = GeneratePayslip.new("60000")
        generatedPayslip = generator.taxComputation()
        expect(generatedPayslip.gross_monthly_income).to eq 5000
        expect(generatedPayslip.monthly_income_tax).to eq 500
        expect(generatedPayslip.net_monthly_income).to eq 4500
    end
    it "generate test case annual_salary = 200000" do
        generator = GeneratePayslip.new("200000")
        generatedPayslip = generator.taxComputation()
        expect(generatedPayslip.gross_monthly_income).to eq 16666.666666666668
        expect(generatedPayslip.monthly_income_tax).to eq 4000
        expect(generatedPayslip.net_monthly_income).to eq 12666.666666666668
    end
    it "generate test case annual_salary = 80150" do
        generator = GeneratePayslip.new("80150")
        generatedPayslip = generator.taxComputation()
        expect(generatedPayslip.gross_monthly_income).to eq 6679.166666666667
        expect(generatedPayslip.monthly_income_tax).to eq 837.0833333333334
        expect(generatedPayslip.net_monthly_income).to eq 5842.083333333334
    end
end