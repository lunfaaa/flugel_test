module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 6.0"

  name = "flugel"

  load_balancer_type = "application"

  vpc_id             = "${aws_vpc.vpc.id}"
  subnets            = ["${aws_subnet.subnet_public.id}", "${aws_subnet.subnet_public2.id}"]
  security_groups    = ["${aws_security_group.sg_22.id}", "${aws_security_group.sg_80.id}"]

  target_groups = [
    {
      name_prefix      = "pref-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      targets = [
        {
          target_id = "${aws_instance.testInstance2.id}"
          port = 80
        },
        {
          target_id = "${aws_instance.testInstance.id}"
          port = 80
        }
      ]
    }
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]
}