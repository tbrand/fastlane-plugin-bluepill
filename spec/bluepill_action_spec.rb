describe Fastlane::Actions::BluepillAction do
  describe '#run' do
    it 'Execute bluepill' do
      allow(Fastlane::UI).to receive(:message)

      option_t = "dummy.xctestrun"
      option_a = "dummy.app"
      option_s = "dummy.xcscheme"
      option_o = "dummy_dir"
      option_d = "iPhone 6"
      option_n = 4
      option_h = true
      option_r = true

      expect(Fastlane::Actions::BluepillAction).to receive(:sh).with("#{Fastlane::Actions::BluepillAction.bin_bluepill} #{option_t} -a #{option_a} -s #{option_s} -o #{option_o} -d \"#{option_d}\" -n #{option_n} -H --reuse-simulator")

      Fastlane::Actions::BluepillAction.run({
                                              xctestrun: option_t,
                                              app: option_a,
                                              scheme: option_s,
                                              output_dir: option_o,
                                              device: option_d,
                                              number_of_simulators: option_n,
                                              headless: option_h,
                                              reuse_simulator: option_r
                                            })
    end
  end
end
