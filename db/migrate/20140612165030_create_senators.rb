class CreateSenators < ActiveRecord::Migration
  def change
    create_table :senators do |t|
      t.string :bioguide_id
      t.string :chamber
      t.string :contact_form
      t.string :facebook_id
      t.string :fec_ids
      t.string :first_name
      t.string :gender
      t.string :govtrack_id
      t.string :last_name
      t.string :party
      t.string :state_name
      t.string :term_end
      t.string :term_start
      t.string :website

      t.timestamps
    end
  end
end
