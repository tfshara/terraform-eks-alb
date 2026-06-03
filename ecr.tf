resource "aws_ecr_repository" "demo_app" {
  name = "demo-app"

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
}