# Naming module [conformity]

Allows to handle standardized and unique names for all type / project / component set.  
Returns a structure to use for naming and tagging. Tags can be added in the stacks, never removed.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

No provider.

## Modules

No Modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment name. | `string` | n/a | yes |
| organization | Organization of the owner | `string` | n/a | yes |
| owner | Owner of the application (null by default). | `string` | n/a | yes |
| project | Project of the application. | `string` | n/a | yes |
| region | AWS region where the stack relies. | `string` | n/a | yes |
| type | Type of the application (ms / gw / ...). | `string` | n/a | yes |
| component | Component in the project stack. | `string` | `""` | no |
| default\_domain | n/a | `string` | `"not-allocated"` | no |
| domain | Functional domain of the project | `string` | `""` | no |
| stack | Software stack of the application (null by default). | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| ami\_name | name of this stacks's AMI |
| hash\_cdn | Hash for CDN Endpoint |
| hash\_cdn\_short | Short hash for CDN Endpoint |
| names | Names for the application |
| regional\_names | Regional names for the application |
| service\_name | Service name without env, used by Consul |
| short\_names | Short names for the application |
| tags | Tags for the application without the Name |
| vault\_paths | Vault information for the app |
