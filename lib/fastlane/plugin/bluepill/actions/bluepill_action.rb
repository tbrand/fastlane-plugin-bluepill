module Fastlane
  module Actions
    class BluepillAction < Action
      def self.run(params)
        UI.message("Start test by using Bluepill: https://github.com/linkedin/bluepill")
        cmd =  "#{bin_bluepill}"
        cmd << " -a #{params[:app]}"
        cmd << " -o #{params[:output_dir]}"
        cmd << " -s #{params[:scheme]}"
        cmd << " -d #{params[:device]}"
        cmd << " -n #{params[:number_of_simulators]}"
        cmd << " -H" if params[:headless]
        sh cmd
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
                                       is_string: true),
          FastlaneCore::ConfigItem.new(key: :output_dir,
                                       env_name: "BLUEPILL_OUTPUT_DIR",
                                       description: "output directory path by using bluepill",
                                       optional: false,
                                       is_string: true),
          FastlaneCore::ConfigItem.new(key: :app,
                                       env_name: "BLUEPILL_APP_PATH",
                                       description: ".app path by using bluepill",
                                       optional: false,
                                       is_string: true),
          FastlaneCore::ConfigItem.new(key: :device,
                                       env_name: "BLUEPILL_DEVICE",
                                       description: "device for test use",
                                       optional: true,
                                       is_string: true,
                                       default_value: "iPhone 6"),
          FastlaneCore::ConfigItem.new(key: :headless,
                                       env_name: "BLUEPILL_HEADLESS",
                                       description: "run in headless mode (no GUI)",
                                       optional: true,
                                       is_string: false,
                                       default_value: false),
          FastlaneCore::ConfigItem.new(key: :number_of_simulators,
                                       env_name: "BLUEPILL_NUMBER_OF_SIMLATORS",
                                       description: "number of simulators to run in parallel. (bluepill only)",
                                       optional: true,
                                       is_string: false,
                                       default_value: 4),
        ]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
