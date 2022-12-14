resource "aws_instance" "web" {
  
 
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
 user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install httpd -y
            sudo systemctl enable httpd
            sudo systemctl start httpd
            echo "<h1> Message from `hostname`  </h1>" > /var/www/html/index.html
            EOF
  tags = {
    Name = "vm1"
  }

}
