### João Pedro Rodrigues Sotto Maior ES - M10

# Provisionamento de Infraestrutura AWS com Terraform

Este projeto utiliza o Terraform para provisionar recursos essenciais na AWS: um **Security Group** para RDS, uma instância **RDS MySQL** e um **bucket S3** com versionamento e criptografia habilitados.

---

## :bookmark_tabs: Sumário

- [Pré-requisitos](#pré-requisitos)
- [Passo a Passo de Execução](#passo-a-passo-de-execução)
- [Comandos Terraform e Resultados](#comandos-terraform-e-resultados)
- [Recursos Provisionados na AWS](#recursos-provisionados-na-aws)
- [Limpeza dos Recursos](#limpeza-dos-recursos)
- [Observações](#observações)

---

## Pré-requisitos

- Conta AWS com credenciais válidas (Access Key, Secret Key, Session Token)
- [Terraform](https://www.terraform.io/downloads.html) instalado
- Permissões para criar RDS, S3 e Security Groups

---

## Passo a Passo de Execução

### 1. Clone o repositório

```bash
git clone https://github.com/seu-usuario/seu-repo-terraform-aws.git
cd seu-repo-terraform-aws
```

## 2. Configure as variáveis

Crie um arquivo `terraform.tfvars` com suas credenciais e o nome do bucket:

```hcl
access_key    = "SUA_ACCESS_KEY"
secret_key    = "SUA_SECRET_KEY"
session_token = "SEU_SESSION_TOKEN"
region        = "us-east-1"
bucket_name   = "meu-bucket-exemplo-123456"
```

> **Importante:** O arquivo `.tfvars` está no `.gitignore` para proteger suas credenciais.

---

## 3. Inicialize o Terraform

```bash
terraform init
```

4. Visualize o plano de execução
bash
Copiar
Editar
terraform plan
5. Provisione os recursos
bash
Copiar
Editar
terraform apply
Confirme digitando yes quando solicitado.

### Comandos Terraform e Resultados

terraform init: Inicializa o diretório de trabalho e baixa os providers necessários.

terraform plan: Mostra o que será criado, alterado ou destruído.

terraform apply: Executa o plano e provisiona os recursos na AWS.

### Outputs exibidos ao final do terraform apply:
```
security_group_id      = "sg-0a1b2c3d4e5f6g7h8"
db_instance_endpoint   = "instanciadb.xxxxxxxx.us-east-1.rds.amazonaws.com:3306"
```

### Recursos Provisionados na AWS
1. Security Group para RDS
- Permite acesso à porta 3306 (MySQL) de qualquer IP.

- Usado para proteger a instância RDS.

2. Instância RDS MySQL
- MySQL 8.0, 20GB

- Classe db.t3.micro

- Acesso público habilitado

- Usuário e senha definidos nas variáveis

3. Bucket S3
- Nome definido pela variável bucket_name

- Versionamento habilitado

- Criptografia AES256 habilitada

### Limpeza dos Recursos
Para destruir todos os recursos criados e evitar cobranças:
```
terraform destroy
```

Confirme digitando yes quando solicitado.
