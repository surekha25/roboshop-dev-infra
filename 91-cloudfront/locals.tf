locals {
  cachingOptimized = data.aws_cloudfront_cache_policy.cachingOptimized.id
  cachingDisabled = data.aws_cloudfront_cache_policy.cachingDisabled.id
  cdn_certificate_arn = data.aws_ssm_parameter.certificate_arn.value

  common_name_suffix = "${var.project_name}-${var.environment}" #roboshop-dev
  common_tags = {
    Project = var.project_name
    Environment = var.environment
    Terraform = "true"
  }
}