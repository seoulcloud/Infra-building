# 사용자로부터 입력받을 변수들을 정의합니다.
# 이 변수들은 main.tf나 provider.tf 등에서 사용됩니다.

variable "region" {
  description = "AWS region to deploy"  # 변수 설명
  type        = string                  # 문자열 타입
  default     = "ap-northeast-2"        # 기본값 (서울 리전)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"              # 프리티어에 해당하는 EC2 타입
}
