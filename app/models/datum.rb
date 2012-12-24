class Datum < ActiveRecord::Base
  attr_accessible :data, :description, :name, :schema
  mount_uploader :data, DataUploader
end
