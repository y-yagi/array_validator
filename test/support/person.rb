require 'active_model'
class Person
  include ActiveModel::Validations
  attr_accessor :name, :tags

  validates :name, presence: true
  validates :tags, presence: true
end
