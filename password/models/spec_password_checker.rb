require 'rspec'
require_relative 'password_checker.rb'


RSpec.describe "Password_checker" do 
	before :each do 
		@check = PasswordChecker.new
	end	
	
	it "password must be longer than 7 characters" do 
		expect(@check.check_password("info@ironhack.com", "blalal")).to eq(false)
	end	

	it "password must contain 1 letter, 1 number and 1 symbol" do 
		 expect(@check.check_password("info@ironhack.com", "blasla")).to eq(false)
	expect(@check.check_password("info@ironhack.com", "Pass1wor$")).to eq(true)

	end

	it "password must have 1 uppercase and 1 lowercase" do 
		# expect(@check.check_password("info@ironhack.com", "Pass1wor#")).to eq(true)
		expect(@check.check_password("info@ironhack.com", "pass1wor#")).to eq(false)

	end	

	it "the password must not contain the name nor the domain of the email" do
	
		expect(@check.check_for_name_email("info@ironhack.com", "info")).to eq(false)

	end
end



