class Snippet < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :code, :user_id, :language
  attr_accessible :title, :price, :code, :language, :description
end
