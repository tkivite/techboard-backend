class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :mobile, :gender, :idnumber, :active_status, :password_digest, :password, :role
end
