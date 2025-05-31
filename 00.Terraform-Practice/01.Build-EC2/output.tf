# Terraform apply 후에 출력할 정보를 정의합니다.
# 여기서는 생성된 EC2 인스턴스의 퍼블릭 IP를 출력합니다.

output "ec2_public_ip" {
  value = aws_instance.my_ec2.public_ip  # EC2 인스턴스의 퍼블릭 IP
}
