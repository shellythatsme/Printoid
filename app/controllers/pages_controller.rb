class PagesController < ApplicationController
  def index
    @product = Product.limit(5)
    @categories = Category.all
  end


  def aboutUs
    @page = Contact.all
  end
end
