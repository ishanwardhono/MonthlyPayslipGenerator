class GenerateController < ApplicationController
    def show
        generatedPayslip = GeneratePayslip.new(params[:annual_salary])
        payslip = generatedPayslip.taxComputation()
        employee = Employee.new(params[:employee_name], payslip)
        render json: employee, status: :ok
    end 
end