class AddAttachmentPictureToColumnists < ActiveRecord::Migration[5.1]
  def self.up
    change_table :columnists do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :columnists, :picture
  end
end
