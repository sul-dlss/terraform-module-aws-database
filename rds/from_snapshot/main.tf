resource "aws_db_parameter_group" "rds-param-group" {
  name   = "${var.name}-rds-params"
  family = "${var.family}"

  parameter {
    name  = "client_encoding"
    value = "${var.encoding}"
  }
}

resource "aws_db_instance" "db_instance" {
  identifier                = "${var.identifier}"
  username                  = "${var.username}"
  password                  = "${var.password}"
  instance_class            = "${var.instance_class}"
  parameter_group_name      = "${aws_db_parameter_group.rds-param-group.name}"
  skip_final_snapshot       = "${var.skip_final_snapshot}"
  db_subnet_group_name      = "${var.subnet_group_name}"
  backup_retention_period   = "${var.backup_retention_period}"
  backup_window             = "${var.backup_window}"
  snapshot_identifier       = "${var.snapshot_identifier}"

  tags {
    Note = "Deployed by terraform"
  }
}