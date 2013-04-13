class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :topic, :website, :company
  validates_presence_of :name, :email, :message
end
