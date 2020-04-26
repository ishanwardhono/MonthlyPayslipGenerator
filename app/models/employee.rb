class Employee < Payslip
    def initialize(name, payslip)
        @employee_name = name
        new_payslip = payslip
        super(new_payslip.gross_monthly_income, new_payslip.monthly_income_tax, new_payslip.net_monthly_income)
    end
end