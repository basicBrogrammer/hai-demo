module Types
  class MutationType < Types::BaseObject
    include Hai::GraphQL
    hai_mutation(User, Post)
  end
end
