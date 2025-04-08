resource "aws_iam_user" "terraform_study" {
  name = var.user_name
}

resource "aws_iam_group" "study_group" {
  name = "TerraformStudyGroup"
}

resource "aws_iam_group_policy_attachment" "ec2_attach" {
  group      = aws_iam_group.study_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "s3_attach" {
  group      = aws_iam_group.study_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "read_iam" {
  group      = aws_iam_group.study_group.name
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
}

resource "aws_iam_group_membership" "add_user" {
  name  = "study_membership"
  users = [aws_iam_user.terraform_study.name]
  group = aws_iam_group.study_group.name
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.terraform_study.name
}
