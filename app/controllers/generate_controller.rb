class GenerateController < ApplicationController
    def show
        pay = Payslip.new(1,2,3)
        generatedPayslip = Employee.new('annual_salary', pay)
        render json: generatedPayslip, status: :ok
    end 
end