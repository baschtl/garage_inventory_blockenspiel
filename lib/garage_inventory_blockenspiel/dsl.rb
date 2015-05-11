module GarageInventoryBlockenspiel

  class Dsl
    include Blockenspiel::DSL

    attr_accessor :garages

    def initialize
      @garages ||= []
    end

    def garage(options, &block)
      @garages << Models::Garage.new(options, &block)
    end

  end

end
