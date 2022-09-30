data "aws_iam_policy_document" "s3policy" {
  statement {
    actions = ["s3:GetObject"]

    resources = [
      aws_s3_bucket.website.arn,
      "${aws_s3_bucket.website.arn}/*"
    ]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.oai.iam_arn]
    }
  }
}

### this pulls the zone id from the nonprod.darey.io account, take note of the provider ###
data "aws_route53_zone" "domain" {
  provider = aws.test
  name = var.domain_name
}
