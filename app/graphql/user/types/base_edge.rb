# frozen_string_literal: true

module User::Types
  class BaseEdge < User::Objects::BaseObject
    # add `node` and `cursor` fields, as well as `node_type(...)` override
    include GraphQL::Types::Relay::EdgeBehaviors
  end
end
