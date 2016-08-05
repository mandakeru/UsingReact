require 'rails_helper'

RSpec.describe Product, type: :model do
    context "Validade de um Produto" do
        it "Produto valido?" do
            product = Product.new
            product.product_modelo = 1
            product.description = "Calça azul, rasgada no joelho"
            product.color_id = 2
            product.size_id = 1
            product.quantity = 10
            
            expect(product.valid?).to be_truthy
        end
         it "Produto invalido?" do
            product = Product.new
            product.product_modelo = 2
            product.description = "Calça azul, rasgada no joelho"
            product.color_id = nil
            product.size_id = 1
            product.quantity = 5
            
            expect(product.valid?).to be_falsey
        end
        it "Produto invalido, sem descrição" do
            product = Product.new
            product.product_modelo = 1
            product.description = nil
            product.quantity = 7
            product.color_id = nil
            product.size_id = 1
            
            expect(product.valid?).to be_falsey
        end
    end
end