class PostEditType < Post
  include ApplicationType

  permit :nickname, :address, :sex, :description, :place, :photo,
         :sterilization, :inoculation, :city, :phone, :pet_type
end
