# class
class PagesController < ApplicationController
  def index
    @products = Product.all.page params[:page]
    @filterrific = Filterrific.new(Product, params[:filterrific])
    @product = Product.filterrific_find(@filterrific).page(params[:page])

  end

  def about_us
    @pages = Contact.all
  end

  def shirts
    @products = Product.where(["category_id = 1"]).page params[:page]
  end

  def shoes
    @products = Product.where(["category_id = 2"]).page params[:page]
  end

  def pants
    @products = Product.where(["category_id = 3"]).page params[:page]
  end

  def hats
    @products = Product.where(["category_id = 4"]).page params[:page]
  end

  def other
    @products = Product.where(["category_id = 5"]).page params[:page]
  end

  def show
    @products = Product.find(params[:id]).page params[:page]
  end

  def search
  end

  respond_to do |format|
    format.html
    format.js
  end
end
