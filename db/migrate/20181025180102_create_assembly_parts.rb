class CreateAssemblyParts < ActiveRecord::Migration[5.2]
  def change
    create_table :assembly_parts do |t|
      t.references :part, foreign_key: true
      t.references :assembly, foreign_key: true

      t.timestamps
    end
  end
end
