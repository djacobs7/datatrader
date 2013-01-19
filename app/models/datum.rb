class Datum < ActiveRecord::Base
  attr_accessible :data, :description, :name, :schema
  mount_uploader :data, DataUploader

  def make_plot
    inFile = File.join(Rails.root, "public", self.data.url)
    outFile = File.join(Rails.root, "public/assets", image_url)
    rScriptsPath = File.join(Rails.root, "rScripts")
    rCommand = "R CMD BATCH --no-save --no-restore '--args inFile=\"#{inFile}\" outFile=\"#{outFile}\"' #{rScriptsPath}/plot.R"
    `#{rCommand}`
  end

  def image_url
    outFile = File.join( "img", "#{self.data.file.filename}.jpeg")
  end
end
