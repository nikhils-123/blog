class Demo < ApplicationRecord


	validates :user_name, format: { with: /\A[a-zA-Z0-9]+\Z/ }
	validates :name, :email , presence: true
	validates :email, uniqueness: true , format: { with: /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i , multiline: true ,
		message: "%{value} Should be hello123@gmail.com"}
	##validates :age , inclusion: { in: 18..30 , message: 'The age must be between 18 and 30' }
	validates :password , format: { with: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/ ,
	multiline: true , message: "Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:" }
	validate :check
  		def check
  			if password.present? && password != password_confirmation 
  				errors.add(:password_confirmation , "Password didn't match. please check the password")
  			end
  		end
  	VALID_ROLES = ["user", "admin", "jury"]
  	validates :role, inclusion: { in: VALID_ROLES ,
    message: "%{value} Should be user admin jury" }

    before_validation :remove_whitespaces

  		private 	

  		def remove_whitespaces
  			user_name.strip!
  			unless user_name =~ /^(?=.*[a-zA-Z])(?=.*[0-9])/
  				errors.add(:user_name , "You have to use 1 Digit and 1 letter as well")
  			end

  		end

  		
end
