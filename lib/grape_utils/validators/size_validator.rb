module GrapeUtils
  module Validators
    class SizeValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        unless @option.include?(params[attr_name].size)
          raise Grape::Exceptions::Validation,
                param: @scope.full_name(attr_name), message: 'size invalid'
        end
      end
    end
  end
end
