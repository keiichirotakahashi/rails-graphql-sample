# frozen_string_literal: true

module User::Queries::Links
  class LinksQuery < User::Queries::BaseQuery
    description 'Return all links'

    type [User::Objects::LinkType], null: false

    def resolve
      Link.all
    end
  end
end
