class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :home
      t.string :about
      t.string :faqs
      t.string :contact

      t.timestamps
    end
  end
end
