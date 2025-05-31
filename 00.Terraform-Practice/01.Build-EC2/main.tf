# 실제로 생성할 AWS 리소스를 정의합니다.
# 여기서는 EC2 인스턴스를 하나 생성합니다.

resource "aws_instance" "my_ec2" {
  # 사용할 AMI ID (Amazon Linux 2, 서울 리전 기준)
  ami                    = "ami-0c9c942bd7bf113a2"

  # EC2 인스턴스 타입을 변수로부터 받아옵니다.
  instance_type          = var.instance_type

  # 퍼블릭 IP를 할당합니다 (인터넷 접속 가능하게 하기 위해)
  associate_public_ip_address = true

  # 태그를 달아줍니다 (AWS 콘솔에서 인스턴스 이름으로 보임)
  tags = {
    Name = "terraform-test-instance"
  }
}
