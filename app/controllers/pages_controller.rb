# class
class PagesController < ApplicationController
  def index
    @products = Product.all
  end

  def about_us
    @pages = Contact.all
  end
end
