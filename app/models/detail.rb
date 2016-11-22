class Detail < ActiveRecord::Base
validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
#validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
validates :password, :confirmation => true #password_confirmation attr
end
