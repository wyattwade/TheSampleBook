class AddAttachmentMp3ToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :pictures, :mp3
  end
end
