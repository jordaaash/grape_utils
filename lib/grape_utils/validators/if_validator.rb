module GrapeUtils
  module Validators
    class IfValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        value = params[attr_name]
        if value.nil? || !@option.call(value, params, attr_name)
          name = @scope.full_name(attr_name)
          raise Grape::Exceptions::Validation, param: name, message: 'invalid'
        end
      end
    end
  end
end
