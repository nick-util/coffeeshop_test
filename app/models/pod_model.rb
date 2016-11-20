class PodModel < ActiveRecord::Base
  belongs_to :pod_type
  belongs_to :flavor
end
