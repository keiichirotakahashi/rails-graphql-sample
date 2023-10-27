# frozen_string_literal: true

module User::Types
  module BaseInterface
    include GraphQL::Schema::Interface
    edge_type_class(User::Types::BaseEdge)
    connection_type_class(User::Types::BaseConnection)

    field_class User::Types::BaseField
  end
end
