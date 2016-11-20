# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# idem-potency
# Note: Would normally have a full suite set up
# combined with database cleaner Gem
MachineType.delete_all
PodType.delete_all
Flavor.delete_all
MachineModel.delete_all
PodModel.delete_all
MachineTypePodType.delete_all


large_machine = MachineType.create( product_type: "COFFEE_MACHINE_LARGE")
small_machine = MachineType.create( product_type: "COFFEE_MACHINE_SMALL")
espresso_machine = MachineType.create( product_type: "ESPRESSO_MACHINE")

large_pod = PodType.create( product_type:"COFFEE_POD_LARGE")
small_pod = PodType.create( product_type: "COFFEE_POD_SMALL" )
espresso_pod = PodType.create( product_type: "ESPRESSO_POD" )

vanilla = Flavor.create( coffee_flavor: "COFFEE_FLAVOR_VANILLA" )
caramel = Flavor.create( coffee_flavor: "COFFEE_FLAVOR_CARAMEL" )
psl = Flavor.create( coffee_flavor: "COFFEE_FLAVOR_PSL" )
mocha = Flavor.create( coffee_flavor: "COFFEE_FLAVOR_MOCHA" )
hazelnut = Flavor.create( coffee_flavor: "COFFEE_FLAVOR_HAZELNUT" )



coffee_machine_models = [
  ['CM001', small_machine, false, "small_coffee_machine.jpg"],
  ['CM002', small_machine, false, "small_coffee_machine.jpg"],
  ['CM003', small_machine, true, "small_coffee_machine.jpg"],
  ['CM101', large_machine, false, "large_coffee_machine.jpg"],
  ['CM102', large_machine, true, "large_coffee_machine.jpg"],
  ['CM103', large_machine, true, "large_coffee_machine.jpg"],
  ['EM001', espresso_machine, false, "espresso_machine.jpg"],
  ['EM002', espresso_machine, false, "espresso_machine.jpg"],
  ['EM003', espresso_machine, true, "espresso_machine.jpg"]
]

coffee_machine_models.each do |( sku, product_type, water_line, img)|
  MachineModel.create(
    machine_type_id: product_type.id,
    water_line_comp: water_line,
    sku: sku,
    img: img
  )
end

coffee_pod_models = [
  ["CP001", small_pod, 1, vanilla, "vanilla_coffee_pod.jpg"],
  ["CP003", small_pod, 3, vanilla, "vanilla_coffee_pod.jpg"],
  ["CP011", small_pod, 1, caramel, "caramel_coffee_pod.jpg"],
  ["CP013", small_pod, 3, caramel, "caramel_coffee_pod.jpg"],
  ["CP021", small_pod, 1, psl, "psl_coffee_pod.jpg"],
  ["CP023", small_pod, 3, psl, "psl_coffee_pod.jpg"],
  ["CP031", small_pod, 1, mocha, "mocha_coffee_pod.jpg"],
  ["CP033", small_pod, 3, mocha, "mocha_coffee_pod.jpg"],
  ["CP041", small_pod, 1, hazelnut, "hazelnut_coffee_pod.jpg"],
  ["CP043", small_pod, 3, hazelnut, "hazelnut_coffee_pod.jpg"],
  ["CP101", large_pod, 1, vanilla, "vanilla_coffee_pod.jpg"],
  ["CP103", large_pod, 3, vanilla, "vanilla_coffee_pod.jpg"],
  ["CP111", large_pod, 1, caramel, "caramel_coffee_pod.jpg"],
  ["CP113", large_pod, 3, caramel, "caramel_coffee_pod.jpg"],
  ["CP121", large_pod, 1, psl, "psl_coffee_pod.jpg"],
  ["CP123", large_pod, 3, psl, "psl_coffee_pod.jpg"],
  ["CP131", large_pod, 1, mocha, "mocha_coffee_pod.jpg"],
  ["CP133", large_pod, 3, mocha, "mocha_coffee_pod.jpg"],
  ["CP141", large_pod, 1, hazelnut, "hazelnut_coffee_pod.jpg"],
  ["CP143", large_pod, 3, hazelnut, "hazelnut_coffee_pod.jpg"],
  ["EP003", espresso_pod, 3, vanilla, "vanilla_coffee_pod.jpg"],
  ["EP005", espresso_pod, 5, vanilla, "vanilla_coffee_pod.jpg"],
  ["EP007", espresso_pod, 7, vanilla, "vanilla_coffee_pod.jpg"],
  ["EP013", espresso_pod, 3, caramel, "caramel_coffee_pod.jpg"],
  ["EP015", espresso_pod, 5, caramel, "caramel_coffee_pod.jpg"],
  ["EP017", espresso_pod, 7, caramel, "caramel_coffee_pod.jpg"]
]

coffee_pod_models.each do |(sku, pod_type, pack_size, flavor, img)|
  PodModel.create(
    pod_type_id:pod_type.id,
    flavor_id: flavor.id,
    pack_size: pack_size,
    sku: sku,
    img: img
  )
end


machine_type_pod_type = [
  [large_machine, large_pod],
  [small_machine, small_pod],
  [espresso_machine, espresso_pod]
]

machine_type_pod_type.each do |(machine_type, pod_type)|
  MachineTypePodType.create(pod_type_id: pod_type.id, machine_type_id: machine_type.id)
end