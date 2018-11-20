resource "aws_instance" "pma" {
  ami                    = "ami-031a3db8bacbcdc20"
  key_name               = "godefroi"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.allow_all_egress.id}", "${aws_security_group.http_https.id}", "${aws_security_group.ssh.id}"]
  subnet_id              = "${aws_subnet.public_subnet.id}"
  ebs_optimized          = false
  monitoring             = false
}
