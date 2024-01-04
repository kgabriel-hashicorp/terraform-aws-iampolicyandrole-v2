data "aws_iam_policy_document" "s3_read_policy" {
  statement {
    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]
    resources = ["arn:aws:s3:::*"]
  }
}

resource "aws_iam_role" "iam_role_s3_read" {
  name               = "${var.role_name}-read-only-s3"
  assume_role_policy = data.aws_iam_policy_document.s3_read_policy.json
  tags               = var.role_tags

}