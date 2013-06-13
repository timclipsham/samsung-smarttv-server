class AddAttachmentPackageToWidgets < ActiveRecord::Migration
  def self.up
    change_table :widgets do |t|
      t.attachment :package
    end
  end

  def self.down
    drop_attached_file :widgets, :package
  end
end
