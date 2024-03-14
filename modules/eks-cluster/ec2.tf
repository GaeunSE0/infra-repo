#resource "aws_instance" "test_hyeob_instance" {
#  ami           = data.aws_ami.amazon-linux-2.id
#  instance_type = "t2.micro"
#
#  network_interface {
#    network_interface_id = aws_network_interface.ni.id
#    device_index         = 0
#  }
#
#  # network_interface를 인스턴스에 붙이지 않는다면 아래 속성으로 보안 그룹을 붙여줍니다.
#  #   vpc_security_group_ids = [aws_security_group.test_hyeob_sg.id]
#
#  # 키 파일을 이용해 생성
#  key_name = aws_key_pair.kp.key_name
#
#  root_block_device {
#    volume_size = 30
#    volume_type = "gp3"
#  }
#
#  tags = local.tags
#
#  user_data = <<EOF
##!/bin/bash
#yum install -y amazon-efs-utils
#sudo mkdir -p item
#sudo mkdir -p user
#sudo mkdir -p main
#sudo mount -t fs-029e09027eb333e3a:/ / item
#sudo mount -t fs-00858be3def947bab:/ / user
#sudo mount -t fs-0eeb66b3303bf0296:/ / main
#  EOF
#
#  depends_on = [
#    aws_efs_mount_target.mount
#  ]
#}
#
## amazon linux 2 이미지 불러오기
#data "aws_ami" "amazon-linux-2" {
#  most_recent = true
#
#  owners = ["amazon"]
#
#  filter {
#    name   = "name"
#    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
#  }
#}
#
## 탄력적 IP 붙여주기
#resource "aws_eip" "lb" {
#  instance = aws_instance.efs.id
#  vpc      = true
#}