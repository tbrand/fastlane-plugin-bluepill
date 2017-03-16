module Fastlane
  module Helper
    class BluepillHelper
      # class methods that you define here become available in your action
      # as `Helper::BluepillHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the bluepill plugin helper!")
      end
    end
  end
end
