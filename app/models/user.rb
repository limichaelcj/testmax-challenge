class User < ApplicationRecord
  @@name_format = /\A[a-z]+([\-\']?[a-z]+)+\z/i

  # full_name attribute allows form_for to provide both
  # first_name and _last_name attributes from single text field
  attr_accessor :full_name

  validates :first_name, presence: true, format: { with: @@name_format, message: "is invalid or too short" }
  validates :last_name, presence: true, format: { with: @@name_format, message: "is invalid or too short" }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "is invalid" }
  validates :pnum, format: { with: /[0-9]{3}-?[0-9]{3}-?[0-9]{4}/, message: "is invalid" }

  # aggregate name errors for full_name form field
  def get_name_error
    if !self.errors[:first_name].empty?
      return self.errors.full_messages_for(:first_name)[0]
    end

    if !self.errors[:last_name].empty?
      return self.errors.full_messages_for(:last_name)[0]
    end

    false
  end

end
