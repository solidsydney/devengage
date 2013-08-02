ActiveAdmin.register User do
  
  show do |photos|
    attributes_table do
      row :image do
        image_tag(photos.photos, :width => "300px", :height => "150px")
      end
      row   :reg_number
      row :name
      row :surname
      row  :referer_id
      row   :address
      row    :mission
      row   :payment_plan
      row  :paid
      row  :amount_paid
      row  :balance
      row   :email
      row :created_at
      row :updated_at
      row   :phone_number
      row   :photos_file_name
      row   :photos_content_type
      row  :photos_file_size
      row :photos_updated_at
      row   :encrypted_password
      row   :reset_password_token
      row :reset_password_sent_at
      row :remember_created_at
      row  :sign_in_count
      row :current_sign_in_at
      row :last_sign_in_at
      row   :current_sign_in_ip
    end
    active_admin_comments
  end
  index do
    column :thumbnail do |user|
      link_to(image_tag(user.photos, :height=>"60px", :width => "100px"), admin_user_path(user))
    end
    column :reg_number
    column :surname
    column :phone_number
    column :amount_paid
    default_actions
  end
    filter :reg_number
    filter :name
    filter :surname
    filter :email
    filter :amount_paid
    filter :referer
    filter :phone_number


  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "User", :multipart => true do
      f.input :referer
      f.input :name
      f.input :surname
      f.input :email
      f.input :address
      f.input :mission
      f.input :phone_number
      f.input :payment_plan
      f.input :reg_number, :input_html => {:disabled => true}
      f.input :amount_paid
      f.input :paid, :input_html => {:disabled => true}
      f.input :balance, :input_html => {:disabled => true}
      f.input :password
      f.input :password_confirmation
      f.input :photos, :as => :file, :hint => f.object.photos.nil? ? f.template.content_t(:span, "no photo yet"): f.template.image_tag(f.object.photos.url(:medium))


    end
    f.buttons
  end

end
