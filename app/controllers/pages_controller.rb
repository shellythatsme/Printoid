# class
class PagesController < ApplicationController
  def index
    @products = Product.all
  end

  def about_us
    @page = Contact.all
  end
end
