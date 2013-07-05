class Authentication < ActiveRecord::Base
  belongs_to :user

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]

    end
  end
end
