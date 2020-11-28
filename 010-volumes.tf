resource "openstack_blockstorage_volume_v2" "volume" {
  name = var.name
  size = var.size
}

resource "openstack_compute_volume_attach_v2" "va" {
  instance_id = var.instance_id
  volume_id   = openstack_blockstorage_volume_v2.volume.id
}