ActiveAdmin.register Customer do

   permit_params :firstName, :lastName, :address, :city, :province, :email, :phoneNumber, :picture
  


end
