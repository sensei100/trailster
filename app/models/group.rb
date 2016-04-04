class Group < ActiveRecord::Base
  has_many :user_groups
  has_many :users, through: :user_groups

  def as_json(options = {})
    super(options.merge(include: :users))
    # we are overiding one of ActiveRecords attribute methods.
    # super is calling ActiveRecord::Base#as_json
    # as in super(new_options = options.merge(include: :comments))
  end
end
