class PodType < ActiveRecord::Base
  has_many :machine_type_pod_type
  has_many :compatible_machine_types, through: :machine_type_pod_type, :source => :machine_type
  has_many :pod_models
end
