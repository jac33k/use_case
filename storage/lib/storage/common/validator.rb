module Storage
  module Common
    module Validator
      ValidationError = Class.new(StandardError) do
        attr_accessor :kind, :errors

        def initialize(kind, errors)
          @kind = kind
          @errors = errors
        end
      end

      private
      def validate_form_object(form_params, form_object)
        raise ValidationError.new :invalid_attributes, errors: form_object.errors.messages unless form_object_from_params_valid?(form_params, form_object)
      end

      def form_object_from_params_valid?(form_params, form_object)
        form_object.validate(form_params)
      end
    end
  end
end
