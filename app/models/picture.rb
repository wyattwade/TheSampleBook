class Picture < ActiveRecord::Base
    
     belongs_to :user
    
    has_attached_file :image, styles: { medium: "500x500>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    has_attached_file :mp3
    validates_attachment :mp3, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }    

end
