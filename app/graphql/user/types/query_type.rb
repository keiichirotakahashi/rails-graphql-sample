# frozen_string_literal: true

module User::Types
  class QueryType < User::Types::BaseObject
    field :hello, resolver: User::Queries::HelloQuery
  end
end
