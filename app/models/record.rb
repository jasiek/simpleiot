class Record < ApplicationRecord
  scope :today, -> { where('created_at between ? and ?', Date.yesterday, Date.today).order(:created_at) }
end
