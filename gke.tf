provider "google" {
  version = "2.26.0"
  project = "<PROJECT_ID>"
  region  = "<REGION>"
}

resource "google_container_cluster" "example_cluster" {
  name     = "example-cluster"
  location = "<REGION>"

  remove_default_node_pool = true

  node_pool {
    name = "default-node-pool"

    initial_node_count = 3

    instance_group_config {
      instance_type = "n1-standard-1"
    }
  }
}
