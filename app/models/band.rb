class Band < ApplicationRecord
  belongs_to :user
  has_many :albums
  accepts_nested_attributes_for :albums
end
