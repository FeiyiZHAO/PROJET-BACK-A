require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # test/models/student_test.rb
test "should have numeric score" do
  student = Student.new
  assert_not student.valid?
  assert_equal [:name, :last_name], student.errors.keys

  
  student.name = "Gerard"
  student.last_name= "Bouchard"
  assert student.valid?
end
end
