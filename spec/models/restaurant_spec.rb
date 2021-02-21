require 'rails_helper'

RSpec.describe Restaurant do
    context 'testing rspec' do         
        it do
            expect(1).to eq 1
        end
    end 
end



RSpec.describe Restaurant do
    context 'testing total of products' do         
        let(:restaurant) {FactoryBot.create(:restaurant)}
        let(:total) { rand(5) }
        before do            
            (1..total).each do |item|
                FactoryBot.create(:product, restaurant: restaurant)
            end            
        end
        it 'returns total of products for a specific restaurant' do
            # restaurant = FactoryBot.create(:restaurant)            
            # p1 = FactoryBot.create(:product, restaurant: restaurant)
            # p2 = FactoryBot.create(:product, restaurant: restaurant)
            
            expect(restaurant.total_of_products).to eq total
        end
    end 
end