class ProductsController < ApplicationController
  def index
    @products = Product.all
    @name = "Alisson"
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    # devolver da controller para a view
    respond_to do |format|
      if @product.save
        format.html {redirect_to products_path, notice: 'Produto criado'}
      else
        format.html {render :new}
      end
    end
  end

  private

  # bloqueia se não vim com os params que eu quero
  def product_params
    params.require(:product).permit(:name, :value, :restaurant_id)
  end
end
