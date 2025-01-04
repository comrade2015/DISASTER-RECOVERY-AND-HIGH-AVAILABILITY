# Backup Automation
resource "aws_backup_plan" "app_backup_plan" {
  name = "${var.app_name}-backup-plan"

  rule {
    rule_name         = "${var.app_name}-daily-backup"
    target_vault_name = aws_backup_vault.app_vault.name
    schedule          = "cron(0 5 * * ? *)"
    lifecycle {
      delete_after = 30
    }
  }
}

resource "aws_backup_vault" "app_vault" {
  name = "${var.app_name}-backup-vault"
}