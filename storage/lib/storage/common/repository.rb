module Storage
  module Common
    module Repository
      extend Forwardable

      def_delegators :@adapter, :all, :where

      def initialize(adapter)
        @adapter = adapter
      end

      private
      attr_reader :adapter
    end
  end
end
