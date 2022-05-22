// ----------------------------------------------------------------------------
// Optional Variables
// ----------------------------------------------------------------------------
variable "region" {
  description = "AWS region code for creating resources."
  type        = string
  default     = "eu-central-1"
}

variable "profile" {
  description = "Profile stored in aws config or credentials file"
  type        = string
  default     = "default"
}

variable "cluster_version" {
  description = "Kubernetes version to use for the EKS cluster."
  type        = string
  default     = "1.21"
}

variable "vault_user" {
  description = "The AWS IAM Username whose credentials will be used to authenticate the Vault pods against AWS"
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster to create"
  type        = string
  default     = "gitops-cluster"
}

variable "force_destroy" {
  description = "Flag to determine whether storage buckets get forcefully destroyed. If set to false, empty the bucket first in the aws s3 console, else terraform destroy will fail with BucketNotEmpty error"
  type        = bool
  default     = true
}

variable "is_jx2" {
  default     = false
  type        = bool
  description = "Flag to specify if jx2 related resources need to be created"
}

variable "jx_git_url" {
  description = "URL for the Jenins X cluster git repository"
  type        = string
  default     = "https://github.com/cloudtraktor/jx3-eks-vault.git"
}

variable "jx_bot_username" {
  description = "Bot username used to interact with the Jenkins X cluster git repository"
  type        = string
  default     = "adanlessossi"
}

variable "jx_bot_token" {
  description = "Bot token used to interact with the Jenkins X cluster git repository"
  type        = string
  default     = "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"
}

variable "nginx_chart_version" {
  type        = string
  description = "nginx chart version"
  default     = "3.12.0"
}

variable "install_kuberhealthy" {
  description = "Flag to specify if kuberhealthy operator should be installed"
  type        = bool
  default     = true
}
