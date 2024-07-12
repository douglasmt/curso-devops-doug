resource "aws_dynamodb_table" "this" {
  hash_key       = "TodoId"
  name           = var.service_name
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "TodoId"
    type = "S"
  }

  tags = local.common_tags
}

resource "aws_dynamodb_table_item" "todo1" {
  table_name = aws_dynamodb_table.this.name
  hash_key   = aws_dynamodb_table.this.hash_key

  item = <<ITEM
{
  "TodoId": {"S": "1"},
  "Task": {"S": "Aprender Terraform 1"},
  "Done": {"S": "0"}
}
ITEM

}

resource "aws_dynamodb_table_item" "todo2" {
  table_name = aws_dynamodb_table.this.name
  hash_key   = aws_dynamodb_table.this.hash_key

  item = <<ITEM
{
  "TodoId": {"S": "2"},
  "Task": {"S": "Aprender Terraform 2"},
  "Done": {"S": "0"}
}
ITEM

}

resource "aws_dynamodb_table_item" "todo3" {
  table_name = aws_dynamodb_table.this.name
  hash_key   = aws_dynamodb_table.this.hash_key

  item = <<ITEM
{
  "TodoId": {"S": "3"},
  "Task": {"S": "Aprender Terraform 3"},
  "Done": {"S": "0"}
}
ITEM

}

