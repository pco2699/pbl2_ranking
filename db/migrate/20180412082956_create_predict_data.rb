class CreatePredictData < ActiveRecord::Migration[5.2]
  def change
    create_table :predict_data do |t|
      t.string :image_name
      t.float :beautiful_sky
      t.float :not_beautiful_sky
      t.float :other

      t.timestamps
    end
  end
end
