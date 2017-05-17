module Lim
  module Errors
    class BaseError < StandardError
    end

    class MissingHeaderError < BaseError
      def initialize(header_name)
        @header_name = header_name
      end

      def message
        "REQUEST HEADER #{@header_name} is needed"
      end
    end

    class AasmInvalid < BaseError
      def initialize(desc)
        @desc = desc
      end

      def message
        "#{@desc}"
      end
    end

    class AvailabilityError < BaseError
      def initialize(desc)
        @desc = desc
      end

      def message
        "#{@desc}"
      end
    end
  end
end
