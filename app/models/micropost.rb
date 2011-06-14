# == Schema Information
# Schema version: 20110614110801
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  url        :string(255)
#  likes      :integer
#

class Micropost < ActiveRecord::Base
  attr_accessible :content, :url, :likes
  
  belongs_to :user
  has_many :comments
  
  validates :content, :presence => true, :length => { :maximum => 30 }
  validates :url, :presence => true, :length => { :maximum => 250 }
  validates :user_id, :presence => true
  
  default_scope :order => 'microposts.created_at DESC'
end

