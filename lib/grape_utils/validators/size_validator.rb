module GrapeUtils
  module Validators
    class SizeValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        value = params[attr_name]
        if value.nil? || !@option.include?(value.size)
          param = @scope.full_name(attr_name)
          raise Grape::Exceptions::Validation, param: param, message: 'invalid'
        end
      end
    end
  end
end
