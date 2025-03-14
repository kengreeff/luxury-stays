# frozen_string_literal: true

class Landing::Featured::Component < ApplicationViewComponent
  option :listings, default: proc { Listing.none }
end
