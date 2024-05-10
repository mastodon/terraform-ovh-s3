resource "ovh_cloud_project_user_s3_policy" "write_policy" {
  service_name = var.project_id
  user_id      = ovh_cloud_project_user.write_user.id
  policy = jsonencode({
    "Statement" : [{
      "Sid" : "RWContainer",
      "Effect" : "Allow",
      "Action" : [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:ListBucket",
        "s3:ListMultipartUploadParts",
        "s3:ListBucketMultipartUploads",
        "s3:AbortMultipartUpload",
        "s3:GetBucketLocation"
      ],
      "Resource" : [
        "arn:aws:s3:::${aws_s3_bucket.b.bucket}",
        "arn:aws:s3:::${aws_s3_bucket.b.bucket}/*"
      ]
    }]
  })
}

resource "ovh_cloud_project_user_s3_policy" "read_policy" {
  service_name = var.project_id
  user_id      = ovh_cloud_project_user.read_user.id
  policy = jsonencode({
    "Statement" : [{
      "Sid" : "ROContainer",
      "Effect" : "Allow",
      "Action" : [
        "s3:GetObject",
        "s3:ListBucket",
        "s3:ListMultipartUploadParts",
        "s3:ListBucketMultipartUploads"
      ],
      "Resource" : [
        "arn:aws:s3:::${aws_s3_bucket.b.bucket}",
        "arn:aws:s3:::${aws_s3_bucket.b.bucket}/*"
      ]
    }]
  })
}
