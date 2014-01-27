module Refinery
  module Homes
    module Admin
      class HomesController < ::Refinery::AdminController

        crudify :'refinery/homes/home',
                :xhr_paging => true

      end
    end
  end
end
