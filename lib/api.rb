class API < Grape::API
  prefix "api"
  version 'v1', :using => :path
  format :json
  
  before do
    header "Access-Control-Allow-Origin", "*"
    header "Access-Control-Allow-Methods","GET,POST,OPTIONS"
    header "Access-Control-Allow-Headers","*"
  end
  
  desc "hello"
  get :hello do
    {text:'hello'}
  end

  resource :upload do
  get do
      {text:'do post not get'}
  end

  post do
    attachment = {
      :filename => params[:file].filename,
      :type     => params[:file].type,
      :headers  => params[:file].head,
      :tempfile => params[:file].tempfile,
    }
    tmp_upload = ActionDispatch::Http::UploadedFile.new(attachment)
    video = Video.new
    video.video = tmp_upload
    video.thumbnail_path = attachment[:filename]
    video.title = "test-title"
    video.save
  end
  end
end
