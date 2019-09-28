require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
test "should have the necessary required validators" do
  student = Student.new
  assert_not student.valid?
  assert_equal [:name, :last_name], student.errors.keys

  student.name = "Feiyi"
  student.last_name = "ZHAO"
  assert student.valid?
end

end