# frozen_string_literal: true

module User::Queries
  class BaseQuery < GraphQL::Schema::Resolver
    argument_class User::Types::BaseArgument

    def require_login!
      raise GraphQL::ExecutionError, 'login required!!' unless context[:current_user]
    end
  end
end
