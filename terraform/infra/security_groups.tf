resource "aws_security_group" "k8s_sec_group" {
    name        = "k8s_sec_group"
    vpc_id      = module.vpc.vpc_id
}

resource "aws_security_group_rule" "k8s_http_in" {
    type              = "ingress"
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    security_group_id = aws_security_group.k8s_sec_group.id
}

resource "aws_security_group_rule" "k8s_https_in" {
    type              = "ingress"
    from_port         = 443
    to_port           = 443
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    security_group_id = aws_security_group.k8s_sec_group.id
}

resource "aws_security_group_rule" "k8s_app_node_port_in" {
    type              = "ingress"
    from_port         = 30007
    to_port           = 30007
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    security_group_id = aws_security_group.k8s_sec_group.id
}

resource "aws_security_group_rule" "k8s_out" {
    type              = "egress"
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
    security_group_id = aws_security_group.k8s_sec_group.id
}