resource "aws_s3_bucket" "new_bucket" {
  bucket = "my_state_bucket"
  tags = {
    name = "my_new_bucket"
    Environment = "state"
  }

}