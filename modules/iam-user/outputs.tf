output "test_iam_user_name_with_access_key" {
  value = "${formatlist("%v - %v - %v", aws_iam_user.test.*.name, aws_iam_access_key.test.*.id,aws_iam_access_key.test.*.secret)}"
}

