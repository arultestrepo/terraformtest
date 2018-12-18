resource "aws_iam_user" "test" {
  count = "${length(var.list_of_users) * length(var.list_of_environments)}"
  name  = "${var.list_of_users[count.index / length(var.list_of_environments)]}-${var.list_of_environments[count.index % length(var.list_of_environments)]}"
  path  = "${var.path}"
}


resource "aws_iam_access_key" "test" {
  count = "${aws_iam_user.test.count}"
  user  = "${element(split(",", join(",",aws_iam_user.test.*.name)), count.index)}"
}

