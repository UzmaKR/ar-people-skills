class Skill < ActiveRecord::Base
  has_many :users, through: :users_skills
  has_many :users_skills, dependent: :destroy

  validates :name, :uniqueness => true


  def user_with_proficiency(rating)
    self.users_skills.where(proficiency: rating)
  end

end
