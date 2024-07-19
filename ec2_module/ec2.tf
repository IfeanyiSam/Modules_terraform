resource "aws_instance" "ec2_instance" {
  ami                    = var.ami_id
  count         = var.instance_count
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = merge(var.tags, { Name = "${var.tags["Name"]}-${count.index}" })


  root_block_device {
    volume_size = var.ebs_volume_size
    volume_type = var.ebs_volume_type
  }
  disable_api_stop = true
  disable_api_termination = true
  

} 