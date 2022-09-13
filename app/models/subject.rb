# frozen_string_literal: true

# Subject Model
class Subject < ApplicationRecord
  has_and_belongs_to_many :careers
  has_and_belongs_to_many :teachers
end
