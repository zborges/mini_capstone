class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "product.json.jb"
  end

  def all_individual_products
    @products = Product.all
    individual_products = @products.each do |product|
    end
    @products = individual_products
    render "product.json.jb"
  end

  def show
    # item = params[:item_select]
    @products = Product.find(params[:id])
    render "product.json.jb"
  end

  def username_password
    @products
  end
end
