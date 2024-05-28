# project     = var.project_id
#   region      = var.region
#   zone        = var.zone
#   credentials = var.credentials

project_id  = "heat-wave-416401"
region      = "us-east1"
zone        = "us-east1-b"
credentials = "heat-wave-416401-0c68f0f47255.json"
location          = "US"
google_bucket_url = "https://storage.googleapis.com/"
network_name      = "task2-network"
subnet_name       = "task2-subnet"
ip_cidr_range     = "10.240.0.0/24"
ports             = ["22", "80", "443"]
source_ranges     = ["0.0.0.0/0"]
firewall_name     = "firewall-rule"
machine_type      = "e2-medium"
instance_name     = "task2-instance"
