class Video < ActiveRecord::Base
  has_attached_file :video,
    :path => ":rails_root/public/videos/:filename"
  do_not_validate_attachment_file_type :video
end
