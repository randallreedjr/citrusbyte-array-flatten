RSpec.describe MyArray do
  describe '#flatten' do
    context 'when array is already flat' do
      let(:array) { [1,2,3,4] }
      it 'returns the array' do
        my_array = MyArray.new(array)

        expect(my_array.flatten).to eq [1,2,3,4]
      end
    end
  end
end
