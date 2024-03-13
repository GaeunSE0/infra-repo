module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "vintageblue-cluster"
  cluster_version = "1.29"
  vpc_id = "vpc-03da032aa3a47564e"

  private_subnets = ["subnet-0fe7043a56d83eae9", "subnet-038945e0080992196"]
  public_subnets  = ["subnet-039ea145cdaca1b40", "subnet-02e45352d37269a81"]
}