bin/rails g model machine_type product_type:string
bin/rails g model pod_type product_type:string
bin/rails g model flavor coffee_flavor:string
bin/rails g model machine_model machine_type:references water_line_comp:boolean sku:string img:string
bin/rails g model pod_model pod_type:references flavor:references pack_size:integer sku:string img:string
bin/rails g model machine_type_pod_type machine_type:references pod_type:references

