class Bid < ActiveRecord::Base
  belongs_to :bidder, class_name: "User"

  validates_presence_of :bidder
end
