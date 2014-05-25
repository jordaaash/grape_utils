module GrapeUtils
  module Validators
    class TimeValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        params[attr_name] = Time.strptime(params[attr_name], @option)
      rescue ArgumentError
        raise Grape::Exceptions::Validation,
              param: @scope.full_name(attr_name), message: 'invalid'
      end
    end
  end
end
