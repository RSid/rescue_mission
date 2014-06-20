class User < ActiveRecord::Base
  has_many :questions
  has_many :answers

  def self.find_from_hash(hash)
    find_by_provider_and_uid(hash['provider'], hash['uid'])
  end

  def self.create_from_hash(hash)
    User.create(:user => user, :uid => hash['uid'], :provider => hash['provider'], :name => hash['user_name'])
  end

end
