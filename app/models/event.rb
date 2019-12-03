class Event < ApplicationRecord
  # Direct associations

  belongs_to :username,
             :class_name => "User",
             :foreign_key => "user_id",
             :counter_cache => true

  # Indirect associations

  # Validations

end
