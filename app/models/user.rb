class User < ApplicationRecord
  include Hai::RestrictedAttributes

  has_many :posts
  restricted_attributes :password
end
