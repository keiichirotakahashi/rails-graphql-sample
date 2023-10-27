# frozen_string_literal: true

module User::Mutations::Votes
  class CreateVoteMutation < User::Mutations::BaseMutation
    argument :link_id, ID

    type User::Objects::VoteType

    def resolve(**params)
      require_login!
      Vote.create!(
        link: Link.find(params[:link_id]),
        user: current_user
      )
    end
  end
end