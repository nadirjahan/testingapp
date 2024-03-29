class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  #association
  has_and_belongs_to_many :roles
  has_many :authentications


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end

end
