# terraform-hsdp-edge-app
This Terraform module deploys an app to your STL


## Requirements

| Name | Version |
|------|---------|
| hsdp | >= 0.12.1 |

## Providers

| Name | Version |
|------|---------|
| hsdp | >= 0.22.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| app\_name | The app name to use. Must be usable as a DNS hostname | `string` | n/a | yes |
| container\_port | Container port number where the app listens on | `number` | `8080` | no |
| docker\_credentials | Optional docker credentials to use | <pre>object({<br>    username = string<br>    password = string<br>  })</pre> | <pre>{<br>  "password": "",<br>  "username": ""<br>}</pre> | no |
| docker\_image | The Docker image to deploy | `string` | n/a | yes |
| replicas | Number of replicas to spin up | `number` | `1` | no |
| serial\_number | Serial number of the device to deploy to | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| app\_resource\_id | The resource id of the STL app |
