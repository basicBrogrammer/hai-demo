class Post < ApplicationRecord
  belongs_to :user

  module Policies
    def self.update(record, context)
      raise UnauthorizedError unless record.user == context[:current_user]
    end
  end
  module Actions
    def self.create(record, context)
      record.user = context[:current_user]
    end
  end
end
