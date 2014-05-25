# Modified from https://github.com/intridea/grape/blob/master/lib/grape/validations/coerce.rb
# Set inclusion in #convert_value suggested at https://github.com/intridea/grape/pull/642
module GrapeUtils
  module Validators
    class ConvertValidator < Grape::Validations::SingleOptionValidator
      def validate_param! (attr_name, params)
        unless params.is_a?(Hash)
          raise Grape::Exceptions::Validation,
                param: @scope.full_name(attr_name), message_key: :coerce
        end
        new_value = convert_value(@option, params[attr_name])
        if valid_type?(new_value)
          params[attr_name] = new_value
        else
          raise Grape::Exceptions::Validation,
                param: @scope.full_name(attr_name), message_key: :coerce
        end
      end

      class InvalidValue
      end

      private

      def _valid_array_type? (type, values)
        values.all? do |val|
          _valid_single_type?(type, val)
        end
      end

      def _valid_single_type? (klass, val)
        # allow nil, to ignore when a parameter is absent
        return true if val.nil?
        if klass == Virtus::Attribute::Boolean
          val.is_a?(TrueClass) || val.is_a?(FalseClass)
        elsif klass == Rack::Multipart::UploadedFile
          val.is_a?(Hashie::Mash) && val.key?(:tempfile)
        else
          val.is_a?(klass)
        end
      end

      def valid_type? (val)
        if @option.is_a?(Array) || @option.is_a?(Set)
          _valid_array_type?(@option.first, val)
        else
          _valid_single_type?(@option, val)
        end
      end

      def convert_value (type, val)
        # Don't coerce things other than nil to Arrays, Hashes, or Sets
        return val || [] if type == Array
        return val || Set.new if type == Set
        return val || {} if type == Hash

        converter = Virtus::Attribute.build(type)
        converter.coerce(val)

          # not the prettiest but some invalid coercion can currently trigger
          # errors in Virtus (see coerce_spec.rb:75)
      rescue
        InvalidValue.new
      end
    end
  end
end
