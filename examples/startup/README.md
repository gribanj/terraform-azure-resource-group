<!-- BEGIN_TF_DOCS -->

## Modules

| Name                                      | Source | Version |
| ----------------------------------------- | ------ | ------- |
| <a name="module_rg"></a> [rg](#module_rg) | ../../ | n/a     |

## Resources

No resources.

## Inputs

| Name                                                      | Description                                                      | Type          | Default                                                           | Required |
| --------------------------------------------------------- | ---------------------------------------------------------------- | ------------- | ----------------------------------------------------------------- | :------: |
| <a name="input_create"></a> [create](#input_create)       | Boolean flag to control whether a new resource should be created | `bool`        | `false`                                                           |    no    |
| <a name="input_location"></a> [location](#input_location) | The location of the resource                                     | `string`      | `"westus3"`                                                       |    no    |
| <a name="input_name"></a> [name](#input_name)             | The name of the resource                                         | `string`      | `"rg-xxxxx-prod"`                                                 |    no    |
| <a name="input_tags"></a> [tags](#input_tags)             | A map of tags to add to the resource                             | `map(string)` | <pre>{<br> "createdby": "griban",<br> "workload": "v3"<br>}</pre> |    no    |

## Outputs

| Name                                                           | Description                                                  |
| -------------------------------------------------------------- | ------------------------------------------------------------ |
| <a name="output_rg_output"></a> [rg_output](#output_rg_output) | The entire resource object, either existing or newly created |

<!-- END_TF_DOCS -->
