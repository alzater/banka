ActiveAdmin.register Order do
	permit_params :new, :comment, :name, :phone, :text
end
