class PostEditType < Post
  include ApplicationType

  permit :nickname, :description, :place, :photo, :user_id
end
