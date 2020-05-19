class Post < ApplicationRecord



has_attached_file :picture
validates_attachment_presence :picture
validates_attachment_size :picture, :less_than => 100.megabytes
validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
before_create :check_max_value

validates_uniqueness_of :company_name
def check_max_value

if Post.last != nil

	self.id = Post.last.id + 1
  	self.post_id = Post.last.id + 1
else
	
	self.id = 1
  	self.post_id = 1

end

    
end

self.primary_key = "post_id"
belongs_to :columnist
end
