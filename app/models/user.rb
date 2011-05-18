# == Schema Information
# Schema version: 20110504155827
#
# Table name: users
#
#  id         :integer         not null, primary key
#  login      :string(255)
#  password   :string(255)
#  email      :string(255)
#  name       :string(255)
#  surname    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessible :name, :email

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, :presence => true,
                   :uniqueness => {:case_sensitive =>false},
                   :length => { :maximum => 50 }
  validates :email, :presence => true,
            :format     => { :with => email_regex },
            :uniqueness => true
end
