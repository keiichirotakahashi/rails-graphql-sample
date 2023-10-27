# frozen_string_literal: true

module User::Types
  class QueryType < User::Objects::BaseObject
    field :hello, resolver: User::Queries::HelloQuery
    field :links, resolver: User::Queries::Links::LinksQuery
  end
end
