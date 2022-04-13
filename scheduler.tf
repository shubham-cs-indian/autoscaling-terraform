resource "aws_autoscaling_schedule" "web_up" {
  scheduled_action_name  = "scale_up"
  min_size               = 2
  max_size               = 2
  desired_capacity       = 2
  start_time             = "2022-04-13T06:00:00Z"
  end_time               = "2022-04-13T22:00:00Z"
  autoscaling_group_name = aws_autoscaling_group.web.name
}

resource "aws_autoscaling_schedule" "web_down" {
  scheduled_action_name  = "scale_down"
  min_size               = 1
  max_size               = 1
  desired_capacity       = 1
  start_time             = "2022-04-13T22:00:00Z"
  end_time               = "2022-04-14T06:00:00Z"
  autoscaling_group_name = aws_autoscaling_group.web.name
}
