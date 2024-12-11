provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "0612dba3-6fc6-45db-8918-66d29bf3eb54"
    git_commit           = "559cd6f802ea3a48a5fe70ff76e9e093b7334fae"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:29:21"
    git_last_modified_by = "83021685+pbaideme@users.noreply.github.com"
    git_modifiers        = "83021685+pbaideme"
    git_org              = "pbaideme"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
