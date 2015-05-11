require 'ostruct'

require "garage_inventory_blockenspiel/version"

require "garage_inventory_blockenspiel/dsl"
require "garage_inventory_blockenspiel/models/garage"
require "garage_inventory_blockenspiel/models/room"

module GarageInventoryBlockenspiel

  def self.initialize_with_file(path_to_file, dsl = nil)
    dsl = dsl || Dsl.new
    Blockenspiel.invoke(dsl, file: path_to_file)
  end

end
