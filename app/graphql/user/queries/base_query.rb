# frozen_string_literal: true

module User::Queries
  class BaseQuery < GraphQL::Schema::Resolver
    argument_class User::Types::BaseArgument

    protected

    def current_user
      context[:current_user]
    end

    def require_login!
      raise GraphQL::ExecutionError, 'login required!!' unless current_user
    end
  end
end
