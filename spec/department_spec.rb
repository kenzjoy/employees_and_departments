require 'rspec'
require './lib/employee'
require './lib/department'

RSpec.describe Department do
        before(:each) do
            @customer_service = Department.new("Customer Service")
            @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
            @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
        end

        it 'exists' do 
            expect(@customer_service).to be_a Department
        end

        it 'has attributes' do
            expect(@customer_service.name).to eq("Customer Service")
        end
        
        it 'starts with no employees' do
            expect(@customer_service.employees).to eq([])
        end

        it 'has no expenses to start' do
            expect(@customer_service.expenses).to eq 0
        end

    describe '#hire' do
        it 'can add to employees array' do
            @customer_service.hire(@bobbi)
            @customer_service.hire(@aaron)
        
            expect(@customer_service.employees).to eq([@bobbi, @aaron])
        end 
    end
    
    describe '#expense' do
        it 'can add to expenses array' do
            @customer_service.expense(100)
            @customer_service.expense(25)
        
            expect(@customer_service.expenses).to eq(125)
        end
    end    
end