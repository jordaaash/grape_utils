module GrapeUtils
  module Validators
    class SplitValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        value             = params[attr_name]
        params[attr_name] = value.split(@option) unless value.nil?
      end
    end
  end
end
