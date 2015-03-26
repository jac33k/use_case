module Storage
  module Events
    module UseCases
      class AddNewEvent
        include ::SolidUseCase

        steps :validate, :store_event

        def initialize(event_repository = EventRepository.new)
          @event_repository = event_repository
          @validate_event   = ValidateEvent.new(event_repository)
        end

        def validate(event_params)
          continue validate_event.(event_params)
        rescue ValidateEvent::ValidationError => e
          fail e.kind, e.errors
        end

        def store_event(event_form_object)
          continue event_repository.save(event_form_object)
        end

        private
        attr_reader :event_repository,
                    :validate_event
      end
    end
  end
end
