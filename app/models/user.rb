class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :hikes
  has_many :comments


  def as_json(options = {})
    super(options.merge(include: [:hikes, :comments]))
    # we are overiding one of ActiveRecords attribute methods.
    # super is calling ActiveRecord::Base#as_json
    # as in super(new_options = options.merge(include: :comments))
  end
end
