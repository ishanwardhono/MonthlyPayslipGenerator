class Employee < Payslip
    def initialize(name, payslip)
        @employee_name = name
        super(payslip.gross_monthly_income, payslip.monthly_income_tax)
    end
end