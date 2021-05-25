class GenerateController < ApplicationController
    def show
        if !params.has_key?(:annual_salary) || !params.has_key?(:employee_name)
            return error('some field is missing')
        end
        generatedPayslip = GeneratePayslip.new(params[:annual_salary])
        payslip = generatedPayslip.taxComputation()
        employee = Employee.new(params[:employee_name], payslip)
        employee.toString()
        render json: employee, status: :ok
    end 
    def error(msg)
        render json: {message: msg}, status: :bad_request
    end
end