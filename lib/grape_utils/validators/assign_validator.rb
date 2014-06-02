module GrapeUtils
  module Validators
    class AssignValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        value = params[attr_name]
        unless value.nil?
          params[attr_name] = if @option.is_a?(Proc)
            @option.call(value, params, attr_name)
          else
            @option
          end
        end
      end
    end
  end
end
