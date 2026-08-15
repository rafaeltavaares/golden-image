#Validar se o bucket existe -> precisamos do nome dele. Vamos seguir o padrão account-region-namespace
#Se não existir, cria e se existir nao faz nada.
resource "aws_s3_bucket" "state-bucket" {
    bucket = "${var.name}-${var.account}-${var.region}-an"
    bucket_namespace = "account-regional"

}
