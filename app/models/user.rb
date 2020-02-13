class User < ApplicationRecord
  # The method has_secure_password must be added to the model to make sure the password is properly
  # encrypted into the database: has_secure_password is part of the bcrypt gem,
  # so we have to install it first. Add it to the gemfile:
  # gem 'bcrypt', '~> 3.1.7'
  has_secure_password
end
