class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    if options[:feilds].any? {|feild| record.send(feild) == "Evil"}
      record.errors.add :base, "This person is evil"
    end
  end
end


class MyValidator < ActiveModel::Validator
  		def validate(record)
  			unless record.name.start_with? 'X'
  				record.errors.add :name , "Need a name starting with X please"
  			end
  		end
 end

 class EmailValidator <ActiveModel::EachValidator
 	def validate_each(record , attribute , value )
 		unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
 			record.errors.add attribute, (options[:message] || "is not an Email")
 		end
 	end
 end


class Person < ApplicationRecord
	#validates :email , confirmation: { case_sensitive: false } , presence: true
	#validates :name, presence: true, length: {minimum: 5}
	#validates :start_date, comparison: { less_than_or_equal_to: :end_date }
	#validates :subdomain, exclusion: { in: %w(www us ca jp),message: "%{value} is reserved." }
	#validates :subdomain, format: { with: /\A[a-zA-Z]+\z/,
    #message: "only allows letters" }
    #validates :subdomain, inclusion: { in: %w(Nikhil),
    #message: "%{value} is not a valid size" }
    #validates :name, length: { minimum: 2 }
  	#validates :bio, length: { maximum: 500 }
  	#validates :password, length: { in: 6..20 }
  	#validates :registration_number, length: { is: 6 }
  	#validates :bio, length: { maximum: 1000,
    #too_long: "%{count} characters is the maximum allowed" }
    #validates :password, format: { with: /\A[+-]?\d+\z/,
    #message: "only allows letters" }
    #validates :password, numericality: true
  	#validates :registration_number, numericality: { only_integer: true }
  	#validates :name, :password, :email, presence: true
  	#validates :confirmation, inclusion: [true, false]
	#validates :confirmation, exclusion: [nil]
	#validates :name, :password, :email, absence: true
	#validates :email, uniqueness: true
	#validates :email, uniqueness: { scope: :start_date,
    #message: "should be different" }
    #validates :password, numericality: { even: :registration_number}
    #validates :name, uniqueness: { case_sensitive: false }
    #validates_with GoodnessValidator , feilds: [:name , :bio]
    #validates_each :name , :bio do |record , attr , value|
    	#record.errors.add(attr, 'must start with uppar case') if value =~/\A[[:lower:]]/
    #end
    #validates :password , length: {is: 5}, allow_blank: true
    #validates :name , presence: { message: "must  be given please!!" }
    #validates :password, numericality: { message: "%{value} seems wrong" }
    #validates :email, uniqueness: true, on: :create
    #validates :registration_number, numericality: true, on: :update
    #validates :name, presence: true
    #validates :email, uniqueness: true, on: :account_setup
  	#validates :registration_number, numericality: true, on: :account_setup
  	#validates :name, presence: true , uniqueness: true, strict: NameGenerationException
  	#validates :name, presence: true, length: { minimum: 3 }
  	
  	#validate do |person|
    	#errors.add :name, :too_plain, message: "is not cool enough"
  	#end

  	#validate do |person|
  		#errors.add :base , :invalid , message: "This person is invaild"
  	#end 


  	#validates :email, presence: true, if: :paid_with_card?

  		#def paid_with_card?
    		#name == "Mohit"
  	#end

  	#include ActiveModel::Validations
  	#validates_with MyValidator

  	#validates :email, presence: true, email: true


  	#validate :check

  		#def check
  			#if start_date.present? && end_date < start_date 
  				#errors.add(:end_date , "cannot be in the past")
  			#end
  		#end

  		# validates :email , presence: true
  		# before_validation :ensure_login_has_a_value

  		# private

  		# def ensure_login_has_a_value
  		# 	if email.nil?
  		# 		self.login = email unless email.blank?
  		# 	end
  		# end

  		# validates :email , presence: true

  		# after_create do 
  		# 	self.name = email.capitalize if name.blank?
  		# end

  		# before_validation :normalize_name , on: :create 

  		# private

  		# def normalize_name
  		# 	self.name = name.downcase.titleize
  		# end


  		# attr_accessor :name 	

  		# validates_length_of :name , maximum: 6

  		# before_validation :remove_whitespaces

  		# private 	

  		# def remove_whitespaces
  		# 	name.strip!
  		# end

  		# before_save :change_title

  		# def change_title 
  		# 	self.subdomain = "www.google.com"
  		# end

  		# REGEX = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/

  		# validates :bio, format: { with: REGEX , multiline: true , message: "Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:" }

  		after_initialize do |person|
  			puts "You have initialized an object!"
  		end

  		after_find do |person|
  			puts "You have found an object"
  		end

  		after_touch do |user|
    		puts "You have touched an object"
  		end

end
	