class User < ApplicationRecord
  validates :name, presence: true, format: { with: /\A([a-z](\-[a-z]|[\.\,\'])?[ \t]*){2,}\z/i, message: "is invalid or too short." }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "address is invalid." }
  validates :phone, format: { with: /[0-9]{3}-?[0-9]{3}-?[0-9]{4}/, message: "number is invalid." }
end
