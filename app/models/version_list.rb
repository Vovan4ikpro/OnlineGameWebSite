class VersionList < ApplicationRecord
  has_many :user_more_infos, foreign_key: "version_id"
  has_one_attached :image
end
