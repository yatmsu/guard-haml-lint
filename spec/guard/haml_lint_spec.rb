require 'spec_helper'

describe Guard::HamlLint do
  subject { Guard::HamlLint.new(options) }
  let(:options) { {} }

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

  xdescribe '#start' do
  end

  xdescribe '#reload' do
  end

  xdescribe '#run_all' do
  end

  xdescribe '#run_on_additions' do
  end

  xdescribe '#run_on_modifications' do
  end

  xdescribe '#run_on_removals' do
  end
end
