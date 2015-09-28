class Item < ActiveRecord::Base
	
  belongs_to :cate
  has_attached_file :cover,
   styles:{
   original:"1024*1024>",
   cover: "300x300>", 
   icon: "100x100#" },
   default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
