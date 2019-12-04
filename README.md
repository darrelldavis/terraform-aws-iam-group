# terraform-aws-iam-group

Terraform module to provision a group in AWS IAM.

## Prerequisites

* A recent (> 0.12.17) version of [Terraform](https://www.terraform.io/downloads.html).

## Usage

Example usage:

```
module "readonly_group" {
  source = "git@github.com:darrelldavis/terraform-aws-iam-group?ref=master"

  name       = "ReadOnly"
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
```

## Variables

|  Name                        |  Default       |  Description                                                | Required |
|:-----------------------------|:--------------:|:------------------------------------------------------------|:--------:|
| name    |  | The group name. See [https://www.terraform.io/docs/providers/aws/r/iam_group.html](https://www.terraform.io/docs/providers/aws/r/iam_group.html) for name guidelines/rules.   | Yes      |
| path | "/" | Path in which to create the group | No |
| policy_arn    |   |The ARN of the policy you want to apply to the group  | Yes      |


## Outputs

| Name              | Description            |
|:------------------|:----------------------|
| id | The group's ID. |
|arn |The ARN assigned by AWS for this group. |
|name |The group's name. |
|path |The path of the group in IAM. |
|unique_id | The unique ID assigned by AWS. |


## Authors

[Darrell Davis](https://github.com/darrelldavis)

## License

MIT Licensed. See LICENSE for full details.

