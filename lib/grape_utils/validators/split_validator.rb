module GrapeUtils
  module Validators
    class SplitValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        params[attr_name] = params[attr_name].split(@option)
      end
    end
  end
end
