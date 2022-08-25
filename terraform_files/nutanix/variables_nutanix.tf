//////
// Nutanix variables
//////

variable "nutanix_endpoint" {
  type        = string
  description = "Endpoint for the Prism Elements or Prism Central instance. This can also be specified with the NUTANIX_ENDPOINT environment variable"
}

variable "nutanix_username" {
  type        = string
  description = "Username for the Prism Elements or Prism Central instance. This can also be specified with the NUTANIX_USERNAME environment variable"
}

variable "nutanix_password" {
  type        = string
  description = "Password for the Prism Elements or Prism Central instance. This can also be specified with the NUTANIX_PASSWORD environment variable"
}

variable "nutanix_port" {
  type        = number
  description = "Port for the Prism Elements or Prism Central instance. This can also be specified with the NUTANIX_PORT environment variable. Defaults to 9440"
}

variable "nutanix_cluster" {
  type        = string
  description = "Nutanix cluster name"
}


variable "nutanix_subnet" {
  type        = string
  description = "Nutanix subnet name. While selected the nic Ip will be in that subnet addresses range"
}


///////////
// Test infra variables
///////////


variable "cluster_name" {
  type = string
  description = <<EOF
Assisted installer cluster name
All the resources will be located under a folder with this name
and tagged with the cluster name
The resources should be associate with this name for easy recognition.
EOF
}

variable "iso_download_path" {
  type        = string
  description = "Discovery ISO path (in order to add hosts to the cluster)"
  default = ""
}

///////////
// Control Plane machine variables
///////////

variable "masters_count" {
  type = number
  description = "The number of master nodes to be created."
}

variable "master_memory" {
  type = number
  description = "RAM in MiB allocated to masters"
}

variable "master_disk" {
  type = number
  description = "The size of the master's disk, in bytes"
}

variable "master_vcpu" {
  type = number
  description = "The total number of virtual processor cores to assign to the master virtual machine."
}

variable "workers_count" {
  type = number
  description = "The number of worker nodes to be created."
}

variable "worker_memory" {
  type = number
  description = "The size of the worker's virtual machine's memory, in MB"
}

variable "worker_disk" {
  type = number
  description = "The size of the worker's disk, in bytes"
}

variable "worker_vcpu" {
  type = number
  description = "The total number of virtual processor cores to assign to the master virtual machine."
}


variable "nutanix_control_plane_cores_per_socket" {
  type = number
  default = 1
  description = <<EOF
The number of cores per socket(cpu) in this virtual machine.
The number of vCPUs on the virtual machine will be num_cpus divided by num_cores_per_socket.
If specified, the value supplied to num_cpus must be evenly divisible by this value. Default: 1
EOF
}
