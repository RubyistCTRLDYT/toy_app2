class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 140 },
            presence: true

  def name(micropost)
    @user = micropost.user
    name = @user.name
  end      
end
