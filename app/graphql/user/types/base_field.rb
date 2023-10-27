# frozen_string_literal: true

module User::Types
  class BaseField < GraphQL::Schema::Field
    argument_class User::Types::BaseArgument
  end
end
