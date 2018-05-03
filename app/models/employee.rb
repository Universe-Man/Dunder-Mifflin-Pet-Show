class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, :title, uniqueness: true
  # validates :alias, uniqueness: {scope: :title}
  # validates :title, uniqueness: {scope: :alias}

end
