# ===================================
# Author: @aglorhythm / girlysheet
# Description: This module will handle EC2 instance
# ===================================

resource "aws_instance" "vm_terraform" {
  count                  = length(var.instance_details)
  ami                    = data.aws_ami.debian_12.image_id
  instance_type          = var.instance_details[count.index].type
  subnet_id              = var.instance_details[count.index].subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = var.instance_details[count.index].name
  }
}
