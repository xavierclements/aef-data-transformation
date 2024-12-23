<!-- BEGIN_TF_DOCS -->
Copyright 2024 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.2 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 6.13.0, < 7.0.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 6.13.0, < 7.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 6.14.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_storage_bucket.aef_artifacts_bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket.aef_jobs_bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_object.uploaded_artifacts](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |
| [google_storage_bucket_object.uploaded_jobs](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | Your organization or domain name, organization if centralized data management, domain name if one repository for each data domain in a Data mesh environment. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment folder name you want to deploy. ../jobs/<<ENVIRONMENT>>/.. If not set wherever is in the dev environment folder will be deployed. | `string` | `"dev"` | no |
| <a name="input_project"></a> [project](#input\_project) | The project where the GCS buckets for storing your artifacts and job definitions will be created. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region where the GCS buckets for storing your artifacts and job definitions will be created. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->