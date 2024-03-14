module "ebs-csi-driver" {
    source  = "DNXLabs/eks-efs-csi-driver/aws"
    version = "0.1.5"
  cluster_name = "vintageblue-cluster"
  cluster_identity_oidc_issuer = "oidc.eks.ap-northeast-2.amazonaws.com/id/867C273539F190B1436059E44E4CF621"
  cluster_identity_oidc_issuer_arn = "arn:aws:iam::058264269986:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/867C273539F190B1436059E44E4CF621"

}