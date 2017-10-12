class AddAttachmentBlobToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :blob
    end
  end

  def self.down
    remove_attachment :images, :blob
  end
end
