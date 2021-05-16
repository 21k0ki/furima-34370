class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :nickname, presence: true
  # validates :password, :presence true
  # validates :last_name, presence: true
  # validates :first_name, presence: true
  # validates :last_name_kana, presence: true
  # validates :first_name_kana, presence: true
  # validates :birthday, presence: true

  with_options presence: true do
    validates :nickname
    validates :password, format: { with: /\A[a-zA-Z0-9]+\z/ }
    validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥々]/ }
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥々]/ }
    validates :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/	}
    validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/	}
    validates :birthday
  end
end
