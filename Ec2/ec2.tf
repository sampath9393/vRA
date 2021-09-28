resource "aws_key_pair" "key_pair" {
  key_name = "RAC_SANDBOX_KEY"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgNJNmWgrIJK4f7xEvvC2bbSg96yESeMRRBQM704ZgNH8sYoxsqbu8J1FW79XV7Q2vW6wqgeR5LWAnI+txirAEphKFyC8QqUQw2khO8K1Bz1N9tAUbiEopy+wEa2WUerRKlYtnj4WnUzIqKrOa6RJdPug7stPH6IQlKlLtw1PFyA5nY4ta6i2cTZLGrU2tHTJTD6mB6Zj/ElhYkFcr2bbuHVHVyt6cRnJzOCCE8Gw0xGv9FFSHk6Vs/bK1jKBDhdR5C93xIzy2/pXcv4mPqy0dI8dc+hOXvmwBS6V58iinYbWsDCVWtkI1aUFqOiGAPf7y1TjYdEIXxA9fM4W3Jh9z rsa-key-20210922"
}


resource "aws_instance" "RAC-EC2" {
  ami = var.ami
  subnet_id = var.SUBNET_ID
  instance_type = var.instance_type_map[var.env]
  key_name = "RAC_SANDBOX_KEY"
  vpc_security_group_ids = [ aws_security_group.ec2-sg.id ]
  tags = merge(
  local.common_tags,
  {"Name" = "EC2 RAC"
   "env" = "var.env"}
  )

}
