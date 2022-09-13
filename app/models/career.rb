# frozen_string_literal: true

# Career Model
class Career < ApplicationRecord
  has_and_belongs_to_many :subjects
end
