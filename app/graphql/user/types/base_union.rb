# frozen_string_literal: true

module User::Types
  class BaseUnion < GraphQL::Schema::Union
    edge_type_class(User::Types::BaseEdge)
    connection_type_class(User::Types::BaseConnection)
  end
end
