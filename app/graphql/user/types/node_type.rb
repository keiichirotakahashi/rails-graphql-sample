# frozen_string_literal: true

module User::Types
  module NodeType
    include User::Types::BaseInterface
    # Add the `id` field
    include GraphQL::Types::Relay::NodeBehaviors
  end
end
