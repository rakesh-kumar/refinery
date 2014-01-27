module Refinery
  module Homes
    class Home < Refinery::Core::BaseModel
      self.table_name = 'refinery_homes'

      attr_accessible :title, :date, :photo_id, :blurb, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
