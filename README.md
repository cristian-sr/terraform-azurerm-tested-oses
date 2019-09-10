[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/buildStatus/icon?job=dcos-terraform%2Fterraform-azurerm-tested-oses%2Fsupport%252F0.1.x)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-tested-oses/job/support%252F0.1.x/)

Azure DC/OS Tested OSes
==========
This module returns for an given OS the Azure Image as well as its default user and the prerequisits script

EXAMPLE
-------

```hcl
module "dcos-tested-oses" {
  source  = "terraform-dcos/tested-oses/azurerm"
  version = "~> 0.1.0"

  os = "centos_7.3"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| azure\_os\_image\_version | Azure Images | map | `<map>` | no |
| dcos\_version | Specifies which DC/OS version instruction to use. Options: 1.13.4, 1.12.4, 1.11.11, etc. See dcos_download_path or dcos_version tree for a full list. | string | `"1.13.1"` | no |
| os | Operating system to use | string | `"centos_7.6"` | no |
| traditional\_default\_os\_user | Standard Default OS Users | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| azure\_offer | Azure Offer |
| azure\_publisher | Azure Publisher |
| azure\_sku | Azure SKU |
| azure\_version | Azure Version |
| os-setup | os-setup |
| user | User |

