module GrapeUtils
  module Validators
    class DateValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        params[attr_name] = Date.strptime(params[attr_name], @option)
      rescue ArgumentError, TypeError
        param = @scope.full_name(attr_name)
        raise Grape::Exceptions::Validation, param: param, message: 'invalid'
      end
    end
  end
end
