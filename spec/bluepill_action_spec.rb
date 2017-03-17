describe Fastlane::Actions::BluepillAction do
  describe '#run' do
    it 'Execute bluepill' do
      allow(Fastlane::UI).to receive(:message)

      option_a = "dummy.app"
      option_s = "dummy.xcscheme"
      option_o = "dummy_dir"
      option_d = "iPhone 6"
      option_n = 4
      option_h = true

      expect(Fastlane::Actions::BluepillAction).to receive(:sh).with("#{Fastlane::Actions::BluepillAction.bin_bluepill} -a #{option_a} -o #{option_o} -s #{option_s} -d \"#{option_d}\" -n #{option_n} -H")

      Fastlane::Actions::BluepillAction.run({
                                              app: option_a,
                                              scheme: option_s,
                                              output_dir: option_o,
                                              device: option_d,
                                              number_of_simulators: option_n,
                                              headless: option_h
                                            })
    end
  end
end
