class User < ApplicationRecord
	validates :password, length: { minimum: 8, allow_nil: true}


	 enum title: [ :mr, :mrs, :ms, :miss ]

	def password
	 @password
	end

	def password=(raw)
	 @password = raw
	 self.password_digest = BCrypt::Password.create(raw)
	end

   def is_password?(raw)
   	BCrypt::Password.new(password_digest).is_password?(raw)
   end
end