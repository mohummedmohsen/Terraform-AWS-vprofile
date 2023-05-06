resource "aws_instance" "vprofile-bastion" {
  ami                    = var.amis[var.region]
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.mohsenkey.key_name
  subnet_id              = module.vpc.public_subnets[0]
  count                  = var.instancecount
  vpc_security_group_ids = [aws_security_group.vprofile-bastion-sg.id]
  associate_public_ip_address = true


  tags = {
    name    = "vprofile-bastion"
    project = "vprofile"
  }

  provisioner "file" {
    content     = templatefile("db-deploy.tmpl", { rds-endpoint = aws_db_instance.vprofile-rds.address, dbuser = var.dbuser, dbpass = var.dbpass })
    destination = "/tmp/vprofile-dbdeploy.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/vprofile-dbdeploy.sh",
      "sudo /tmp/vprofile-dbdeploy.sh"
    ]

  }

  connection {
    user        = var.user
    private_key = file(var.private_key)
    host        = self.public_ip

  }

  depends_on = [aws_db_instance.vprofile-rds]


}

