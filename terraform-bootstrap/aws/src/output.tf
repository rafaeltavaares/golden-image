output "aws_account_id" {
  description = "conta da aws que estamos logados"
  value       = data.aws_caller_identity.current.account_id
  sensitive   = false
}
