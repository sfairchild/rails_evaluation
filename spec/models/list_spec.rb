describe List do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }

  context 'list.items' do
    it "should create an item" do
      List.create do |list|
        list.name = 'moo'
        list.description = 'new moo'
        list.items << Item.create(name: 'new item')
      end
      expect(List.count).to eq 1
      expect(Item.count).to eq 1
    end
  end
end
