class User < ActiveRecord::Base

  belongs_to :organization

  devise :two_factor_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :two_factor_authenticatable

  validates :phone, presence: true, uniqueness: {scope: :organization_id}

  def send_two_factor_authentication_code
    # check otp_secret_key or otp_code
    debugger
  end

  protected

    def email_required?
      false
    end
end
