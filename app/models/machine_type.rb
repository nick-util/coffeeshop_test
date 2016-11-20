class MachineType < ActiveRecord::Base
  has_many :machine_type_pod_type
  has_many :compatible_pod_types, through: :machine_type_pod_type, :source => :pod_type
  has_many :compatible_pod_models, through: :compatible_pod_types, :source=> :pod_models
  has_many :machine_models
end
