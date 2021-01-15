class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :last_name,
                    format: { with: /\A([ぁ-んァ-ン一-龥]|ー)+\z/ }
          validates :first_name,
                    format: { with: /\A([ぁ-んァ-ン一-龥]|ー)+\z/ }
          validates :birth_date
         end
end
