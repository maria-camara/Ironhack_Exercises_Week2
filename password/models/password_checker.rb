require 'pry'

class PasswordChecker

	def check_password(email, password)
		check_length(password) &&
		check_for_number_symbol_letter(password)&&
		check_for_uppercase(password)&&
		check_for_lowercase(password)&&
		check_for_name_email(email,password)
	end	

	

	def check_length(password)
		if password.length > 7
			true
		else 
			false
		end
	end

	 def check_for_number_symbol_letter(password)
   		unless password.match(/[a-zA-Z0-9!@#$%^&*()]/).nil?
     		true
   		else
     		false
   		end
  		end

 	def check_for_uppercase(password)
   		unless password.match(/[A-Z]/).nil?
     		true
   		else
     		false
   		end
 		end

 	def check_for_lowercase(password)

   		unless password.match(/[a-z]/).nil?
     		true
   		else
     		false
   		end
 	end



 	def check_for_name_email(email, password)
 		email_components = email.split("@")
 		if password.include?(email_components[0]) && password.include?(email_components[1])
 			false
 		else
 		true
 		end
 	end	
end



