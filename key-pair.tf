resource "aws_key_pair" "omshree-web-key" {
  key_name           = "omshree-web-key-pair"
  public_key = file("${path.module}/web-key.pub")
}


resource "aws_key_pair" "omshree-db-key" {
  key_name           = "omshree-db-key-pair"
  public_key = file("${path.module}/db-key.pub")
}