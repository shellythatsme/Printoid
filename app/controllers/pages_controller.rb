# class
class PagesController < ApplicationController
  def index
    @product = Product.limit(5)
    @categories = Category.all
  end

  def about_us
    @page = Contact.all
  end
end
