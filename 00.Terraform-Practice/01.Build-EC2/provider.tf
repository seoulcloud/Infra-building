# Terraform이 사용할 클라우드 제공자(AWS)를 설정합니다.
provider "aws" {
  region  = var.region          # 사용할 AWS 리전을 변수로 받습니다.
  profile = "default"           # AWS CLI에 설정된 프로파일 이름 (로컬 자격증명 사용)
}
