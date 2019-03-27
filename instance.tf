
# Defining master inside the public subnet
resource "aws_instance" "master" {
   ami  = "${var.ami}"
   instance_type = "t2.small"
   key_name = "jenkins-ansible"
   subnet_id = "${aws_subnet.public-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgmaster.id}"]
   associate_public_ip_address = true
   source_dest_check = false
   user_data = "${file("starter.sh")}"

  tags {
    Name = "master"
  }
}

# Defining slave inside the private subnet
resource "aws_instance" "slave" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "application"
   subnet_id = "${aws_subnet.private-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgslave.id}"]
   source_dest_check = false

  tags {
    Name = "slave"
  }
}
