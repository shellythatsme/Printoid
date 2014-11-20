ActiveAdmin.register Product do

  permit_params :name, :quantity, :price, :picture, :description
 


end
