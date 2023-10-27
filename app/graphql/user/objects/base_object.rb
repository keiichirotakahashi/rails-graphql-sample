# frozen_string_literal: true

module User::Objects
  class BaseObject < GraphQL::Schema::Object
    edge_type_class(User::Types::BaseEdge)
    connection_type_class(User::Types::BaseConnection)
    field_class User::Types::BaseField
  end
end
