module Storage
  module Events
    module UseCases
      class ValidateEvent
        include Common::Validator
        attr_reader :event_form_params

        def initialize(event_form_params)
          @event_form_params = event_form_params
        end

        def call(event_form_params)
          EventFormObject.new.tap do |event_form_object|
            validate_form_object(event_form_params, event_form_object)
          end
        end

      end
    end
  end
end
