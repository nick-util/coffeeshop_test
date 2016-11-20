class MachineTypePodType < ActiveRecord::Base
  belongs_to :machine_type
  belongs_to :pod_type
end
