module Storage
  module Events
    class EventRepository
      include Common::Repository

      def initialize(adapter = Event)
        super
      end

      def save(event_form_object)
        adapter.create(
          title: event_form_object.title,
          date: event_form_object.date
        )
      end

    end
  end
end
