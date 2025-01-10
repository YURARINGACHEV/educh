# frozen_string_literal: true
class CourseComponent < ViewComponent::Base
  with_collection_parameter :item

  def initialize(item:, notice:, item_counter:)
    # @course = course
    @item = item
    @notice = notice
    @counter = item_counter + 1
  end
end
