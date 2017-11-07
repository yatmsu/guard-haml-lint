require 'spec_helper'

describe Guard::HamlLint do
  subject { described_class.new(options) }
  let(:options) { { all_on_start: true } }

  describe '#initialize' do
    context 'when default initialized' do
      it { expect(subject.options[:all_on_start]).to be true }

      context 'when app/views directory exists' do
        before do
          allow(File).to receive(:exist?).with('app/views').and_return(true)
        end

        it { expect(subject.options[:haml_dires]).to eq ['app/views'] }
      end

      context 'when app/views directory not exists' do
        before do
          allow(File).to receive(:exist?).with('app/views').and_return(false)
        end

        it { expect(subject.options[:haml_dires]).to eq ['.'] }
      end
    end
  end

  describe '#start' do
    context 'when :all_on_start option is enabled' do
      let(:options) { { all_on_start: true } }

      it 'call #run' do
        expect(subject).to receive(:run)
        subject.start
      end
    end

    context 'when :all_on_start option is disabled' do
      let(:options) { { all_on_start: false } }

      it 'does nothing' do
        expect(subject).not_to receive(:run)
        subject.start
      end
    end
  end

  describe '#reload' do
    it { expect(subject.reload).to eq nil }
  end

  describe '#run_all' do
    it 'call #run' do
      expect(subject).to receive(:run)
      subject.run_all
    end
  end

  describe '#run_on_additions' do
    it 'call #run' do
      expect(subject).to receive(:run).with(['spec/views/sample.html.haml'])
      subject.run_on_additions(['spec/views/sample.html.haml'])
    end
  end

  describe '#run_on_modifications' do
    it 'call #run' do
      expect(subject).to receive(:run).with(['spec/views/sample.html.haml'])
      subject.run_on_modifications(['spec/views/sample.html.haml'])
    end
  end

  describe '#run_on_removals' do
    it { expect(subject.reload).to eq nil }
  end
end
