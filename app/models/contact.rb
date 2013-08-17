class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :source, :user_id
  belongs_to :user
  validates_uniqueness_of :email
end
