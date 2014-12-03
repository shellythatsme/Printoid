ActiveAdmin.register Product do

  permit_params :name, :quantity, :price, :picture, :description, :category_id

  form :html => { :multipart => true } do |f|
    f.inputs 'Product Details' do
      f.input :name
      f.input :description
      f.input :price
      f.input :quantity
      f.input :category
      f.input :picture
      f.input :category_id
    end
    f.actions
  end
end
