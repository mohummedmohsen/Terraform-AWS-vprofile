resource "aws_key_pair" "mohsenkey" {
  key_name   = "mohsenkey"
  public_key = file(var.public_key)

}