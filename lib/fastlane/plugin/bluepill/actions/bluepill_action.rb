module Fastlane
  module Actions
    class BluepillAction < Action
      def self.run(params)
        UI.message("Start test by using Bluepill: https://github.com/linkedin/bluepill")
        `#{bin_bluepill} -a #{params[:app]} -o #{params[:output_dir]} -s #{params[:scheme]}`
      end

      def self.bin_bluepill
        File.expand_path('../../../../../../bin/bluepill', __FILE__)
      end

      def self.description
        "Plugin to use bluepill in fastlane"
      end

      def self.authors
        ["tbrand"]
      end

      # Nothing to return
      def self.return_value; end

      def self.details
        "Bluepill is powered by LinkedIn: https://github.com/linkedin/bluepill"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :scheme,
                                       env_name: "BLUEPILL_SCHEME_PATH",
                                       description: "scheme path by using bluepill",
                                       optional: false,
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :output_dir,
                                       env_name: "BLUEPILL_OUTPUT_DIR",
                                       description: "output directory path by using bluepill",
                                       optional: false,
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :app,
                                       env_name: "BLUEPILL_APP_PATH",
                                       description: ".app path by using bluepill",
                                       optional: false,
                                       type: String),
        ]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
