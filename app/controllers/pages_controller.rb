class PagesController < ApplicationController
  def index
    @products = Product.limit(5)
    @categories = Category.all
  end


  def aboutUs
    @page = Contact.all
  end
end
