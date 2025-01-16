Editar
<p align="center">
  <img src="https://i.ibb.co/zs1zcs3/Video-Frame.png" width="30%" />
</p>

---

Este repositório contém a implementação da **infraestrutura do Amazon SSM (Systems Manager)** para o **gerenciamento de parâmetros sensíveis** em sistemas de **autenticação e gerenciamento de vídeos**. O objetivo é centralizar a configuração e o gerenciamento dos parâmetros necessários, como credenciais e IDs do **Cognito**, de maneira segura e automatizada, utilizando o **Terraform** para provisionamento.

---

## Funcionalidades

Este repositório contém a infraestrutura para gerenciar os seguintes parâmetros sensíveis no **AWS SSM**:

1. **Cognito User Pool ID**: Parâmetro para armazenar o ID do **User Pool** do Cognito.
2. **Cognito App Client ID**: Parâmetro para armazenar o ID do **App Client** do Cognito.
3. **Cognito App Client Secret**: Parâmetro para armazenar o segredo do **App Client** (se necessário).
4. **Credenciais do DynamoDB**: Parâmetros para armazenar o nome de usuário e senha do banco de dados **DynamoDB** (se necessário).

Esses parâmetros são utilizados para permitir uma integração segura entre diferentes componentes da infraestrutura.

## Tecnologias

<p>
  <img src="https://img.shields.io/badge/AWS-232F3E?logo=amazonaws&logoColor=white" alt="AWS" />
  <img src="https://img.shields.io/badge/Terraform-7B42BC?logo=terraform&logoColor=white" alt="Terraform" />
  <img src="https://img.shields.io/badge/AWS_SSM-4B9D3B?logo=aws&logoColor=white" alt="AWS SSM" />
  <img src="https://img.shields.io/badge/GitHub-ACTION-2088FF?logo=github-actions&logoColor=white" alt="GitHub Actions" />
</p>

## Estrutura do Repositório

```
/src
├── ssm_parameters
│   ├── main.tf                    # Definição dos parâmetros SSM com Terraform
│   ├── outputs.tf                 # Outputs dos parâmetros SSM
│   ├── variables.tf               # Definições de variáveis Terraform
│   ├── terraform.tfvars           # Variáveis de ambiente do Terraform
│   └── README.md                  # Documentação do diretório
```

## Como Funciona

1. **Gerenciamento de Parâmetros no SSM**:
    - A infraestrutura no **SSM** armazena valores sensíveis (como IDs e segredos do **Cognito** e **DynamoDB**) de forma segura.
    - Esses parâmetros podem ser atualizados automaticamente quando os valores são gerados pelo repositório do **Cognito**, **Dynamo** ou outros.

2. **Automação com Terraform**:
    - O Terraform é utilizado para provisionar a infraestrutura do **SSM**, criando parâmetros que poderão ser consumidos em outras partes da aplicação.

## Passos para Configuração

### 1. Pré-Requisitos

Certifique-se de ter as credenciais da AWS configuradas corretamente e o **AWS CLI** instalado, além de ter o **Terraform** instalado para o deploy da infraestrutura.

### 2. Configuração dos Parâmetros no SSM

1. No diretório src/ssm_parameters, crie os parâmetros no arquivo main.tf. Os parâmetros para o Cognito User Pool ID, Cognito User Pool ARN e Cognito Client ID serão definidos sem valores neste arquivo para serem posteriormente preenchidos manualmente ou através de um outro processo.

2. O arquivo terraform.tfvars estará vazio inicialmente, sem valores atribuídos aos parâmetros. Eles serão configurados durante o processo de aplicação do Terraform ou de forma manual posteriormente. Exemplo de conteúdo vazio:

```
COGNITO_USER_POOL_ID = ""
COGNITO_USER_POOL_ARN = ""
COGNITO_CLIENT_ID = ""
```
3. Execute o Terraform para provisionar os recursos na AWS:

```bash
cd src/ssm_parameters
terraform init
terraform apply -auto-approve
```

sso criará os parâmetros no AWS SSM Parameter Store para o Cognito User Pool ID, Cognito User Pool ARN, e Cognito Client ID.

### 3. CI/CD com GitHub Actions
Este repositório utiliza o GitHub Actions para automação do processo de deploy da infraestrutura com Terraform:

O GitHub Actions irá:

- Executar o Terraform para provisionar os parâmetros no SSM automaticamente.
- Garantir que os parâmetros sensíveis sejam configurados corretamente em diferentes ambientes, com valores seguros sendo atribuídos posteriormente.
