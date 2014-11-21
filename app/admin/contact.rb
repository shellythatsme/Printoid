ActiveAdmin.register Contact do

  permit_params :title, :content, :phoneNumber, :postalCode, :email

end
