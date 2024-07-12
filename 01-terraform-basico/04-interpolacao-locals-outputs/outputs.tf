output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = ""
}

output "bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
}

output "ips_file_path" {
  value = "${aws_s3_bucket.this.bucket}/${aws_s3_bucket_object.this.key}"
}

output "ips_file2_path" {
  value = "${aws_s3_bucket.manual.bucket}/${aws_s3_bucket_object.manual-this.key}"
}
