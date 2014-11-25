# class
class PagesController < ApplicationController
  def index
    @products = Product.all
  end

  def aboutUs
    @pages = Contact.all
  end
end
