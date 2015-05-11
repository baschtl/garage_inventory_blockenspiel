module GarageInventoryBlockenspiel
  module Models

    class Room
      include Blockenspiel::DSL

      attr_accessor :name, :size, :tools

      def initialize(options = {}, &block)
        options = defaults.merge(options)

        @name       = options[:name]
        @size       = options[:size]
        @tools    ||= []

        Blockenspiel.invoke(block, self) if block
      end

      def method_missing(name, *args)
        options = args.first.is_a?(Hash) ? args.first : {}
        options.merge!(name: name.to_s)

        @tools << OpenStruct.new(options)
      end

      private

      def defaults
        { name: '', size: 0 }
      end

    end

  end
end
