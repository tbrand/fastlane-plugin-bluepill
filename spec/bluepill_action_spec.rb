describe Fastlane::Actions::BluepillAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The bluepill plugin is working!")

      Fastlane::Actions::BluepillAction.run(nil)
    end
  end
end
