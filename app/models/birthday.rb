class Birthday < ActiveRecord::Base
  attr_accessible :date, :name, :nick, :surname, :user_id

  belongs_to :user
end
