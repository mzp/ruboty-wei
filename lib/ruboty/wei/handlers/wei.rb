module Ruboty
  module Handlers
    class Wei < Base
      env :WEI_ALL, "all: respond with all ｳｪｲ", optional: true

      on /(?<message>([ウｳ][エｴェｪ][ｰー]?[イｲ]w*)+)/, name: 'wei', description: 'ｳｪｲｳｪｲ', all: ENV['WEI_ALL']

      def wei(message)
        Ruboty::Wei::Actions::Wei.new(message).call
      end
    end
  end
end
