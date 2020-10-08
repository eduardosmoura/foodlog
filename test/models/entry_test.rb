require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test 'is valid with valid attributes' do
    entry = Entry.new(meal_type: 'Breakfast', calories: 100, carbohydrates: 50, proteins: 50, fats: 10)
    assert entry.save
  end

  test 'should not save entry without meal_type' do
    entry = Entry.new(calories: 100, carbohydrates: 50, proteins: 50, fats: 10)
    assert_not entry.save
  end
end
