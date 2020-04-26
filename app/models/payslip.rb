class Payslip 
    attr_reader :gross_monthly_income
    attr_reader :monthly_income_tax
    attr_reader :net_monthly_income
    def initialize(grossmonthly, monthly_tax)
        @gross_monthly_income = sprintf( "%0.02f", grossmonthly)
        @monthly_income_tax = sprintf( "%0.02f", monthly_tax)
        @net_monthly_income = sprintf( "%0.02f", (Float(grossmonthly) - Float(monthly_tax)))
    end
end