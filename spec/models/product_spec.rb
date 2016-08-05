require 'rails_helper'

RSpec.describe Product, type: :model do
    context "Validade de um Produto" do
        it "Produto valido?" do
            product = Product.new
            product.name = "Calça Jeans"
            product.description = "Calça azul, rasgada no joelho"
            product.color_id = 2
            product.size_id = 1
            
            expect(product.valid?).to be_truthy
        end
         it "Produto invalido?" do
            product = Product.new
            product.name = "Calça Jeans"
            product.description = "Calça azul, rasgada no joelho"
            product.color_id = nil
            product.size_id = 1
            
            expect(product.valid?).to be_falsey
        end
        it "Produto invalido, sem descrição" do
            product = Product.new
            product.name = "Calça Jeans"
            product.description = nil
            product.color_id = nil
            product.size_id = 1
            
            expect(product.valid?).to be_falsey
        end
    end
end