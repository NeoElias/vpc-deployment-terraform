include {
    path = find_in_parent_folders("devops.hcl")
}

terraform {
    source = "../../../../../aws_modules//vpc/"
    extra_arguments "custom_vars" {
        commands = get_terraform_commands_that_need_vars()

        # With the get_tfvars_dir() function, you can use relative paths!
        arguments = [
            "-var-file=${get_terragrunt_dir()}/../../../vars/account/devops.tfvars",
            "-var-file=${get_terragrunt_dir()}/../../../vars/region/us-east-1.tfvars",
            "-var-file=${get_terragrunt_dir()}/../../../vars/env/prod.tfvars",
            "-var-file=${get_terragrunt_dir()}/resources.tfvars"
        ]
    }
}