module GrapeUtils
  module Validators
    class ClampValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        value = params[attr_name]
        unless value.nil?
          params[attr_name] = clamp(value, @option.min, @option.max)
        end
      end

      def clamp (value, min, max)
        [[value, max].min, min].max
      end
    end
  end
end
