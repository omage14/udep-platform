# frozen_string_literal: true

# Teacher Model
class Teacher < ApplicationRecord
  has_and_belongs_to_many :subjects
end
