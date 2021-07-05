resource "aws_instance" "testInstance" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${aws_subnet.subnet_public.id}"
  vpc_security_group_ids = ["${aws_security_group.sg_22.id}"]
  key_name = "${aws_key_pair.ec2key.key_name}"
 tags = {
  Name = "Flugel-instance1"
  Owner = "InfraTeam"
 }
  provisioner "file" {
    source      = "files/script.sh"
    destination = "/tmp/script.sh"
    connection {
      host        = self.public_dns
      type        = "ssh"
      agent       = true
      private_key = "${file("~/.ssh/id_rsa")}"
      user        = "ubuntu"
    }
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "/tmp/script.sh args",
    ]
    connection {
      host        = self.public_dns
      type        = "ssh"
      agent       = true
      private_key = "${file("~/.ssh/id_rsa")}"
      user        = "ubuntu"
    }
  }
  provisioner "file" {
    source      = "files/index.nginx-debian_instance-1.html"
    destination = "/tmp/index.nginx-debian.html"
    connection {
      host        = self.public_dns
      type        = "ssh"
      agent       = true
      private_key = "${file("~/.ssh/id_rsa")}"
      user        = "ubuntu"
    }
  }
  provisioner "remote-exec" {
    inline = [
      "sudo mv /tmp/index.nginx-debian.html /var/www/html/index.nginx-debian.html",
      "sudo /etc/init.d/nginx restart",
    ]
    connection {
      host        = self.public_dns
      type        = "ssh"
      agent       = true
      private_key = "${file("~/.ssh/id_rsa")}"
      user        = "ubuntu"
    }
  }

}

resource "aws_instance" "testInstance2" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${aws_subnet.subnet_public2.id}"
  vpc_security_group_ids = ["${aws_security_group.sg_80.id}"]
  key_name = "${aws_key_pair.ec2key.key_name}"
 tags = {
  Name = "Flugel-instance2"
  Owner = "InfraTeam"
 }
  provisioner "file" {
    source      = "files/script.sh"
    destination = "/tmp/script.sh"
    connection {
      host        = self.public_dns
      type        = "ssh"
      agent       = true
      private_key = "${file("~/.ssh/id_rsa")}"
      user        = "ubuntu"
    }
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "/tmp/script.sh args",
    ]
    connection {
      host        = self.public_dns
      type        = "ssh"
      agent       = true
      private_key = "${file("~/.ssh/id_rsa")}"
      user        = "ubuntu"
    }
  }
  provisioner "file" {
    source      = "files/index.nginx-debian_instance-2.html"
    destination = "/tmp/index.nginx-debian.html"
    connection {
      host        = self.public_dns
      type        = "ssh"
      agent       = true
      private_key = "${file("~/.ssh/id_rsa")}"
      user        = "ubuntu"
    }
  }
  provisioner "remote-exec" {
    inline = [
      "sudo mv /tmp/index.nginx-debian.html /var/www/html/index.nginx-debian.html",
      "sudo /etc/init.d/nginx restart",
    ]
    connection {
      host        = self.public_dns
      type        = "ssh"
      agent       = true
      private_key = "${file("~/.ssh/id_rsa")}"
      user        = "ubuntu"
    }
  }

}

