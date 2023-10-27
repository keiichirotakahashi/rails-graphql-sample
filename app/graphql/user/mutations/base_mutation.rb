# frozen_string_literal: true

module User::Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class User::Types::BaseArgument
    field_class User::Types::BaseField
    input_object_class User::Types::BaseInputObject
    object_class User::Objects::BaseObject

    def require_login!
      raise GraphQL::ExecutionError, 'login required!!' unless context[:current_user]
    end
  end
end
