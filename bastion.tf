resource "aws_instance" "bastion-server" {
  ami                    = "ami-0c7217cdde317cfec"
  instance_type          = "t3.micro"
  key_name               = "web-server-bastion"
  subnet_id              = aws_subnet.bastion-public-a.id
  vpc_security_group_ids = [aws_security_group.bastion-security-group.id]
  iam_instance_profile   = aws_iam_instance_profile.server_profile.name

  tags = {
    Name = "bastion-server"
  }


  root_block_device {
    delete_on_termination = false
    encrypted             = true
    volume_size           = 20
    volume_type           = "gp3"
  }

  volume_tags = {
    Name = "bastion-server-primary",
    env  = "backup"
  }
}

resource "aws_eip" "eip-bastion-server" {
  instance = aws_instance.bastion-server.id
  vpc      = true

  tags = {
    Name = "bastion-server-eip"
  }
}
