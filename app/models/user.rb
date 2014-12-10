class User < ActiveRecord::Base

  devise :two_factor_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :two_factor_authenticatable

  has_one_time_password

  belongs_to :organization
  validates :phone, presence: true, uniqueness: {scope: :organization_id}

  def send_two_factor_authentication_code
    # check otp_secret_key or otp_code
    debugger
  end

  def need_two_factor_authentication?(request)
    true
  end

  protected

    def email_required?
      false
    end
end
