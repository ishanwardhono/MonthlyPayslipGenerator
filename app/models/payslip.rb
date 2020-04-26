class Payslip 
    attr_reader :gross_monthly_income
    attr_reader :monthly_income_tax
    attr_reader :net_monthly_income
    def initialize(grossmonthly, monthly_tax, net_monthly)
        @gross_monthly_income = grossmonthly
        @monthly_income_tax = monthly_tax
        @net_monthly_income = net_monthly
    end
end