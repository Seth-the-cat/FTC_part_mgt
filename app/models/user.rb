class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :assignments, dependent: :destroy
  accepts_nested_attributes_for :assignments

  has_many :roles, through: :assignments
  has_many :rights, through: :assignments

  def can?(action, resource)
    roles.joins(:rights).for(action, resource).any?
  end

  before_create :default_role

  private

  def default_role
    self.roles << Role.where(:name => 'member').first
  end

end
