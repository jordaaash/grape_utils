module GrapeUtils
  module Validators
    class ClampValidator < Grape::Validations::SingleOptionValidator
      def validate_param!(attr_name, params)
        params[attr_name] = clamp(params[attr_name], @option.min, @option.max)
      end

      def clamp (value, min, max)
        [[value, max].min, min].max
      end
    end
  end
end
