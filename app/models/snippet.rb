class Snippet < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :code, :user_id, :language
  attr_accessible :title, :price, :code, :language, :description

  def syntaxed_code
    CodeRay.scan("\n#{code}", language).div(:css => :class).html_safe
  end

  def human_price
    return "Free" if price == 0
    "฿ #{price}"
  end
end
