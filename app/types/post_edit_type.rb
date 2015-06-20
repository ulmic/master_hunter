class PostEditType < Post
  include ApplicationType

  permit :nickname, :address, :sex, :description, :place, :photo,
         :sterilization, :inoculation
end
