module Storage
  module Events
    class EventEntity
      include Virtus.model

      attribute :title, String
      attribute :date,  Date

    end
  end
end
