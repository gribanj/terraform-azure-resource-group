# Terraform Resource Group Module

This module handles the creation and data fetching of Azure Resource Groups based on the specified conditions.

The module follows the principles of "create if not exist". The resource is only created if it doesn't exist. If it exists, it fetches the data of the existing resource.

## Module Declaration / Usage

```hcl
module "rg" {
  source   = ""
  create   = true
  name     = "rg-xxxxxx-prod"
  location = "westus3"
}
```

The create variable is a flag to determine whether the resource group should be created. If create is true, the resource group is created. If create is false, the module will try to fetch the data of an existing resource group with the same name.

## Ternary Operator

This module makes use of the ternary operation, which is a simple form of if-else conditional logic. It's structured as follows: in Terraform. The ternary operator works like this:

`condition ? true_val : false_val`

- `condition`: This is a statement that evaluates to either true or false.
- `true_val`: If the condition is true, this value will be used.
- `false_val`: If the condition is false, this value will be used.

For instance, in the `azurerm_resource_group` resource in this module, we use a ternary operation in the `count` parameter:

```hcl
count    = local.create_rg ? 1 : 0

Here, local.create_rg is the condition.
If local.create_rg is true, the count will be 1, meaning one resource group will be created.
If local.create_rg is false, the count will be 0, meaning no resource group will be created
```

## Resources

This module manages the following resources:

- `azurerm_resource_group:` Manages a resource group.
- `data.azurerm_resource_group:` Fetches the data of an existing resource group.

## Input Variables

- `create:` A boolean flag to create the resource group or fetch the data of an existing one.
- `name:` The name of the resource group.
- `location:` The location of the resource group.

## For a specific environment use case

`e.g.`
terraform init -backend-config="./prod.tfbackend"
terraform plan -var-file="./terraform.tfvars"

<!-- BEGIN_TF_DOCS -->

## Requirements

No requirements.

## Providers

| Name                                                         | Version |
| ------------------------------------------------------------ | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | n/a     |

## Modules

No modules.

## Inputs

| Name                                                      | Description                                                            | Type          | Default                                                                             | Required |
| --------------------------------------------------------- | ---------------------------------------------------------------------- | ------------- | ----------------------------------------------------------------------------------- | :------: |
| <a name="input_create"></a> [create](#input_create)       | Boolean flag to control whether a new resource group should be created | `bool`        | `false`                                                                             |    no    |
| <a name="input_location"></a> [location](#input_location) | The location of the resource group                                     | `string`      | `"westus3"`                                                                         |    no    |
| <a name="input_name"></a> [name](#input_name)             | The name of the resource group                                         | `string`      | n/a                                                                                 |   yes    |
| <a name="input_tags"></a> [tags](#input_tags)             | A map of tags to add to the resource group                             | `map(string)` | <pre>{<br> "env": "prod",<br> "owner": "devops",<br> "terraform": "true"<br>}</pre> |    no    |

## Outputs

| Name                                                        | Description                                                        |
| ----------------------------------------------------------- | ------------------------------------------------------------------ |
| <a name="output_rg_ouput"></a> [rg_ouput](#output_rg_ouput) | The entire resource group object, either existing or newly created |

<!-- END_TF_DOCS -->
