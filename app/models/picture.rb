class Picture < ActiveRecord::Base
	belongs_to :user
  	has_attached_file :image, styles: {:thumb => "240x300>", :normal => "420x680>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end


 