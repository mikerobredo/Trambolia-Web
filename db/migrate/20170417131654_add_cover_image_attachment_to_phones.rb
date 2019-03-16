class AddCoverImageAttachmentToPhones < ActiveRecord::Migration
  def up
    add_attachment :phones, :cover_image
  end

  def down
    remove_attachment :phones, :cover_image
  end
end
