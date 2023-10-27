# frozen_string_literal: true

module User::Mutations
  class DoHelloMutation < User::Mutations::BaseMutation
    description 'Return hello world'

    field :hello, String, null: false

    argument :name, String, required: true

    def resolve(**params)
      require_login!
      { hello: "Hello #{params[:name]}!" }
    end
  end
end
