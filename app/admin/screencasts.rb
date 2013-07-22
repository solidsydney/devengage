ActiveAdmin.register Screencast do

  show do |screencast|
    attributes_table do
      row :image do
        image_tag(screencast.thumbnail, :width => "300px", :height => "150px")
      end
      row :title
      row :body
      row :episode do |video|
        video_tag(video.episode, :type => "video/mp4", :controls=>"true")
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
  index do
    column :thumbnail do |screencast|
      link_to(image_tag(screencast.thumbnail, :height=>"60px", :width => "100px"), admin_screencast_path(screencast))
    end
    column :title
    column :body
    default_actions
  end
  filter :title
  filter :body




  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "New ScreenCast", :multipart => true do
      f.input :title
      f.input :body
      f.input :thumbnail, :as => :file, :hint => f.object.thumbnail.nil? ? f.template.content_t(:span, "no photo yet"): f.template.image_tag(f.object.thumbnail.url(:medium))
      f.input :episode, :as => :file

    end
    f.buttons
  end


end
