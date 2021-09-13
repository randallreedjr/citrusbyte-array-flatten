RSpec.describe MyArray do
  describe '#flatten' do
    context 'when array is empty' do
      let(:array) { [] }

      it 'retuns the empty array' do
        my_array = MyArray.new(array)

        expect(my_array.flatten).to eq []
      end
    end

    context 'when array is already flat' do
      let(:array) { [1,2,3,4] }
      it 'returns the array' do
        my_array = MyArray.new(array)

        expect(my_array.flatten).to eq [1,2,3,4]
      end
    end

    context 'when array contains nested arrays' do
      let(:array) { [[1,2,[3]],4] }
      it 'returns a flat array' do
        my_array = MyArray.new(array)

        expect(my_array.flatten).to eq [1,2,3,4]
      end

      it 'does not change original array' do
        my_array = MyArray.new(array)
        my_array.flatten

        expect(my_array.contents).to eq [[1,2,[3]],4]
      end
    end

    context 'when array contains multiple nested arrays on the same level' do
      let(:array) { [1,[2,3],4,[5,6],7] }
      it 'returns a flat array' do
        my_array = MyArray.new(array)

        expect(my_array.flatten).to eq [1,2,3,4,5,6,7]
      end
    end
  end
end
