class Hike < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user


  def as_json(options = {})
    super(options.merge(include: [:comments, :user]))
    # we are overiding one of ActiveRecords attribute methods.
    # super is calling ActiveRecord::Base#as_json
    # as in super(new_options = options.merge(include: :comments))
  end
end
