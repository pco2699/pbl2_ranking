class PredictDatum < ApplicationRecord
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
    
          obj = new
          obj.attributes = row.to_hash.slice(*updatable_attributes)
    
          obj.save!
        end
      end
    
    def self.updatable_attributes
        ["image_name", "beautiful_sky", "not_beautiful_sky", "other"]
    end
end
