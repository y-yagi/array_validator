require 'minitest_helper'

class TestArrayValidator < Minitest::Test
  def test_validate_all_value_when_value_is_array
    person = Person.new
    person.name = 'test'
    person.tags = ['name', '']
    refute person.valid?

    person.tags = ['name', 'abc']
    assert person.valid?
  end
end
