# frozen_string_literal: true

module User::Types
  class BaseInputObject < GraphQL::Schema::InputObject
    argument_class User::Types::BaseArgument
  end
end
