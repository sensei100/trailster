class Hike < ActiveRecord::Base
  has_many :comments

  def as_json(options = {})
    super(options.merge(include: :comments))
    # we are overiding one of ActiveRecords attribute methods.
    # super is calling ActiveRecord::Base#as_json
    # as in super(new_options = options.merge(include: :comments))
  end
end
