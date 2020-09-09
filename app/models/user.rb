class User < ApplicationRecord
  validates :name, presence: true, format: { with: /\A([a-z](\-[a-z]|[\.\,\'])?[ \t]*)+\z/i, message: "Name is invalid or too short." }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Invalid email address." }
  validates :phone, format: { with: /[0-9]{3}-?[0-9]{3}-?[0-9]{4}/, message: "Invalid phone number."}
end
