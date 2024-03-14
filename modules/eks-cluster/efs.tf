#
## EFS 파일 시스템 생성
#resource "aws_efs_file_system" "efs" {
#  # 원존 클래스를 이용할 경우
#  # availability_zone_name = "ap-northeast-2a"
#
#  # 유휴 시 데이터 암호화
#  encrypted = true
#  # KMS에서 관리형 키를 이용하려면 kms_key_id 속성을 붙여줍니다.
#
#  # 성능 모드: generalPurpose(범용 모드), maxIO(최대 IO 모드)
#  performance_mode = "generalPurpose"
#
#  # 버스팅 처리량 모드
#  throughput_mode = "bursting"
#
#  # 프로비저닝 처리량 모드
#  # throughput_mode = "provisioned"
#  # provisioned_throughput_in_mibps = 100
#
#  # 수명 주기 관리
#  lifecycle_policy {
#    transition_to_ia = "AFTER_30_DAYS"
#  }
#}
#
#resource "aws_efs_mount_target" "mount" {
#  file_system_id  = aws_efs_file_system.efs.id
#  subnet_id       = ["subnet-0fe7043a56d83eae9","subnet-038945e0080992196"]
#  security_groups = ["sg-0176b265f0006ff71"]
#}