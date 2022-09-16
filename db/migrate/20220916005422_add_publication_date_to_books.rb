class AddPublicationDateToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :ppublicationDate, :date
  end
end
