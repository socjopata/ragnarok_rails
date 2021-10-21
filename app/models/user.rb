class User < ApplicationRecord
  has_many :heros
  has_one :current_hero, -> { where(work_in_progress: true) }, class_name: "Hero"
  has_many :finalized_heros, -> { where(work_in_progress: false) }, class_name: "Hero"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :confirmable
end
