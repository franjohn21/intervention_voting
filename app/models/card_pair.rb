class CardPair < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :loser
  validates_presence_of :card
  validates_uniqueness_of :card, :scope => :loser
  belongs_to :card
  belongs_to :loser, :class_name => 'Card'
end
