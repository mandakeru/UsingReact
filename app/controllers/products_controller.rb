class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @products = Product.all
   
  end  
  def show
    
  end  
  
  def estoque
    # Listar as camisas
    @camisaPretaS = Product.where(product_modelo: 1,color_id: 1, size_id: 1).count 
    @camisaPretaM = Product.where(product_modelo: 1,color_id: 1, size_id: 2).count
    @camisaPretaG = Product.where(product_modelo: 1,color_id: 1, size_id: 3).count
    @camisaAmarelaS = Product.where(product_modelo: 1,color_id: 2, size_id: 1).count
    @camisaAmarelaM = Product.where(product_modelo: 1,color_id: 2, size_id: 2).count
    @camisaAmarelaG = Product.where(product_modelo: 1,color_id: 2, size_id: 3).count
    #Listar as blusas
    @blusaPretaS = Product.where(product_modelo: 2,color_id: 1, size_id: 1).count 
    @blusaPretaM = Product.where(product_modelo: 2,color_id: 1, size_id: 2).count
    @blusaPretaG = Product.where(product_modelo: 2,color_id: 1, size_id: 3).count
    @blusaAmarelaS = Product.where(product_modelo: 2,color_id: 2, size_id: 1).count
    @blusaAmarelaM = Product.where(product_modelo: 2,color_id: 2, size_id: 2).count
    @blusaAmarelaG = Product.where(product_modelo: 2,color_id: 2, size_id: 3).count
    
    
    
   
  end
  
  def new
    @products = Product.new
  end  
  def create
   @products = Product.new(product_params)   
   @products.save 
   
   
   redirect_to "/products/#{@products.id}"
  end
  
  def edit
  end
  
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Produto atualizado com sucesso!.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Produto deletado com sucesso!.' }
      format.json { head :no_content }
    end
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_modelo, :description, :color_id, :size_id, :quantity)
      
    end
  
end
