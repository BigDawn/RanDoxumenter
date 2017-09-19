#
class UserRequirement

  @list_of_ids = []

  def test_for_duplicate_id(id)
    print "\ndo this"
  end

  def initialize(id, description)
    test_for_duplicate_id(id)
    @ur_id = id
    @list_of_ids << id
    @description = description
  end

  # @return [ID]
  def id_fetch
    @ur_id
  end

  # @return [Description]
  def desc_fetch
    @description
  end

  def total_fetch
    @list_of_ids.count
  end

  # @!method
  def test_print
    print "\nTotal User Requirements:#{total_fetch}\nNew UR\nID:#{id_fetch}\tDescription:#{desc_fetch}"
  end
end

UR10 = UserRequirement.new(10, 'A new gay UR').test_print
UR20 = UserRequirement.new(10, "Shouldn't be another 10").test_print

