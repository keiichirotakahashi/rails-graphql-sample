# frozen_string_literal: true

module User::Objects
  class VoteType < User::Objects::BaseObject
    field :id, ID, null: false
    field :link_id, Integer
    field :user_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
