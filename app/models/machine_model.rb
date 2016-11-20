class MachineModel < ActiveRecord::Base
  belongs_to :machine_type
  has_many :compatible_pod_models, through: :machine_type, :source => :compatible_pod_models

  def cross_sell_products
    out = []

    pod_list = self.compatible_pod_models
    flavors = pod_list.map(&:flavor_id).uniq
    flavors.each do |flavor|
      out << pod_list.select{|pod| pod.flavor_id == flavor}.min_by(&:pack_size)
    end

    out
  end
end
