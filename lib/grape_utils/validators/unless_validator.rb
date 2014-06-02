module GrapeUtils
  module Validators
    class UnlessValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        value = params[attr_name]
        if value.nil? || @option.call(value, params, attr_name)
          param = @scope.full_name(attr_name)
          raise Grape::Exceptions::Validation, param: param, message: 'invalid'
        end
      end
    end
  end
end
