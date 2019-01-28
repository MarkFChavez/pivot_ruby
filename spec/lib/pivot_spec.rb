require 'spec_helper'

RSpec.describe Pivot do
  
  let(:pivot) { described_class.new(integers) }

  describe ".get" do
    context "Given [1, 3, 5, 2, 2]" do
      let(:integers) { [1, 3, 5, 2, 2] }

      it "returns index 2" do
        expect(pivot.get).to eq 2
      end
    end

    context "Given [2, 3, 1, 1]" do
      let(:integers) { [2, 3, 1, 1] }

      it "returns index 1" do
        expect(pivot.get).to eq 1
      end
    end

    context "Given [1, 2, 3, 4 ,5]" do
      let(:integers) { [1, 2, 3, 4, 5] }

      it "returns -1" do
        expect(pivot.get).to eq -1
      end
    end
  end

end
