class Counter < ApplicationRecord
  has_many :time_slices, dependent: :destroy
end
