class GeneratePayslip
    def initialize(annual_salary)
        @annualSalary = Integer(annual_salary)
    end

    # compute annual tax
    def taxComputation()
        bracket = Hash[0 => 0, 10 => 20000, 20 => 40000, 30 => 80000, 40 => 180000]
        ann_sal = @annualSalary
        $rate = 40
        $totalTax = 0
        
        while $rate >= 0 do
            $taxable = ann_sal - bracket[$rate]
            if $taxable > 0
                ann_sal -= $taxable
                $totalTax += $taxable * ($rate/100.0)
            end
            $rate -= 10
        end
        return Payslip.new(ann_to_mon(@annualSalary), ann_to_mon($totalTax))
    end

    # convert annual to monthly
    def ann_to_mon(ann)
        return ann / 12.0
    end
end