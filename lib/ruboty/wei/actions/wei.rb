module Ruboty
  module Wei
    module Actions
      class Wei
        Response = %w(ｳｪｲ ｳｪｲｳｪｲ ｳｪｰｲ ｳｪｲw)

        attr_reader :message

        def initialize(message)
          @message = message
        end

        def call
          message.reply wei
        end

        def wei
          [
            from_message,
            from_message,
            from_message,
            from_message,
            Response
          ].flatten.sample(1)
        end

        def from_message
          message[:message]
        end
      end
    end
  end
end
