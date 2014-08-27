class Dealership < ActiveRecord::Base
  has_many :users

  def location_enum
    %w[Omaha]
  end
end
