module GrapeUtils
  module Validators
    class DateValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        params[attr_name] = Date.strptime(params[attr_name], @option)
      rescue ArgumentError, TypeError
        raise Grape::Exceptions::Validation,
              param: @scope.full_name(attr_name), message: 'invalid'
      end
    end
  end
end
