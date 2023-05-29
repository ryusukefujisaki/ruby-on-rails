class Band < ApplicationRecord
  has_many :disks
  has_many :ordered_disks, -> { order :released_on }, class_name: Disk.name
end
