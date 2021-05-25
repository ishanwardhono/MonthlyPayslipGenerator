class Payslip 
    attr_reader :gross_monthly_income
    attr_reader :monthly_income_tax
    attr_reader :net_monthly_income
    def initialize(grossmonthly, monthly_tax)
        @gross_monthly_income = grossmonthly
        @monthly_income_tax = monthly_tax
        @net_monthly_income = (grossmonthly - monthly_tax)
    end
    def toString()
        @gross_monthly_income = sprintf( "$%0.02f", @gross_monthly_income)
        @monthly_income_tax = sprintf( "$%0.02f", @monthly_income_tax)
        @net_monthly_income = sprintf( "$%0.02f", @net_monthly_income)
    end
end