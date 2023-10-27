# frozen_string_literal: true

module User::Types
  class MutationType < User::Objects::BaseObject
    field :do_hello, mutation: User::Mutations::DoHelloMutation
  end
end
