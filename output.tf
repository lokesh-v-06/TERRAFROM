#getting the DNS of loadbalancer
output "lb_dns_name" {
description = " the dns name of loadbalancer"
value = aws_lb.external-loadbalancer.dns_name
}
