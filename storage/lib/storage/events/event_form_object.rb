module Storage
  module Events
    class EventFormObject < ::Reform::Form
      include ::Representable::Coercion

      def initialize
        super(EventEntity.new)
      end

      properties :title,
                 type:      String,
                 validates: { presence: true }

      properties :date,
                 type:      Date,
                 validates: { presence: true }

    end
  end
end
