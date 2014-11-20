ActiveAdmin.register Customer do

   permit_params :firstName, :lastName, :address, :city, :email, :phoneNumber, :picture
  


end
