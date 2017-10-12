#attributes
# :name
# :email
# :password

class User < ActiveRecord::Base
  has_secure_password

  has_many :images, dependent: :destroy
end
