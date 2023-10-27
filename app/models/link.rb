# == Schema Information
#
# Table name: links
#
#  id          :bigint           not null, primary key
#  description :text             default(""), not null
#  url         :string           default(""), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Link < ApplicationRecord
end
