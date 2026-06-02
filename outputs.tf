output "cluster_name" {
  value = aws_eks_cluster.main.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.main.endpoint
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "configure_kubectl" {
  value = "aws eks update-kubeconfig --region ${var.region} --name ${var.cluster_name}"
}


output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/terra-key ubuntu@${aws_instance.bastion.public_ip}"
}