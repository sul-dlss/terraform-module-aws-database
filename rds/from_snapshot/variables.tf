variable name {}
variable family {
    default = "postgres9.5"
}
variable encoding {
    default = "utf8"
}

variable engine {
    default = "postgres"
}
variable engine_version {
    default = "9.5"
}
variable instance_class {
    default = "db.t2.medium"
}

variable identifier {}
variable username {}
variable password {}

variable skip_final_snapshot {
    default = false
}

variable subnet_group_name {}

variable backup_retention_period {
    default = 5
}
variable backup_window {
    default = "22:00-23:00"
}

variable snapshot_identifier {}