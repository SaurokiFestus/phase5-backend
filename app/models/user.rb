class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true , uniqueness: true
    validates :password, presence: true , length: { in: 6..20 }
    has_one :profile, dependent: :destroy

    after_create :build_profile

  def build_profile
    Profile.create(email: self.email , user_id: self.id) # Associations must be defined correctly for this syntax, avoids using ID's directly.
  end

end
