class Card < ActiveRecord::Base
  # Remember to create a migration!
  validates_uniqueness_of :content
  validates_presence_of :content
  has_many :card_pairs
  has_many :losers, :through => :card_pairs, :class_name => 'Card'
  has_many :winners, :through => :card_pairs, :source => :card

end
