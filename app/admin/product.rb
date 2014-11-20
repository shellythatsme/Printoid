ActiveAdmin.register Product do

  permit_params :category_id, :productName, :quantity, :price, :picture, :description, :categoryID
 


end
