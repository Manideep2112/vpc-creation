resource "aws_s3_bucket" "manitestbuket2" {
    bucket = "mani-temp-2"
    tags = {
        Name = "mybucket2"
        environment = "Development"
    }
    depends_on = [
    aws_subnet.subnet3_public
    ]
}