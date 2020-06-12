variable "traditional_default_os_user" {
  description = "Standard Default OS Users"
  type        = map(string)

  default = {
    coreos  = "core"
    centos  = "centos"
    ubuntu  = "ubuntu"
    rhel    = "ec2-user"
    windows = "dcosadmin"
  }
}

variable "azure_os_image_version" {
  description = "Azure Images"
  type        = map(list(string))

  default = {
    "centos_7.2"  = ["CentOS", "OpenLogic", "7.2", "7.2.20170517"]
    "centos_7.3"  = ["CentOS", "OpenLogic", "7.3", "7.3.20170707"]
    "centos_7.5"  = ["CentOS", "OpenLogic", "7.5", "7.5.20180815"]
    "centos_7.6"  = ["CentOS", "OpenLogic", "7.6", "7.6.20190402"]
    "centos_7_ci" = ["CentOS-CI", "OpenLogic", "7-CI", "7.6.20190426"]
    "rhel_7.3"    = ["RHEL", "RedHat", "7.3", "7.3.2017053118"]
    "rhel_7.6"    = ["RHEL", "RedHat", "7.6", "7.6.2019060521"]
    "rhel_7_ci"   = ["RHEL", "RedHat", "7-RAW-CI", "7.6.2019062019"]
    "rhel_8"      = ["RHEL", "RedHat", "8", "8.0.2019062020"]
  }
}

variable "os" {
  description = "Operating system to use"
  default     = "centos_7.6"
}
