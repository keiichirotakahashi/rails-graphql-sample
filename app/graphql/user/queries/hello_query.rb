# frozen_string_literal: true

module User::Queries
  class HelloQuery < User::Queries::BaseQuery
    description 'Return hello world'

    type String, null: false

    def resolve
      # require_login!
      'Hello world!'
    end
  end
end
