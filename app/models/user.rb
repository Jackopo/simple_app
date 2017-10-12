#attributes
# :name
# :email
# :password

class User < ActiveRecord::Base
  has_secure_password
end
