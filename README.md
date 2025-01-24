# Automation

Este repositório tem como objetivo automatizar a instalação e configuração inicial de ambientes utilizando o Ansible. O objetivo é eliminar a necessidade de configurações manuais, garantindo consistência, rapidez e reprodutibilidade no setup do ambiente.

## Funcionalidades

- Instalação automática de pacotes e dependências essenciais.
- Configuração inicial de sistemas operacionais e ferramentas necessárias.
- Configurações específicas de ambientes (como configuração de rede, usuários e permissões).
- Suporte a múltiplas distribuições Linux.
- Logs detalhados para auditoria e depuração.

## Estrutura do Repositório

```
automation/
├── ansible/
│   ├── playbooks/          # Playbooks principais
│   ├── roles/              # Funções reutilizáveis divididas por função
│   ├── inventory/          # Arquivos de inventário para diferentes ambientes
│   └── vars/               # Variáveis globais e customizadas
├── docs/                   # Documentação adicional
└── README.md               # Este arquivo
```

## Requisitos

1. **script sh**: Execute o script
   ```bash
   sh init-config.sh
   ```

2. **Acesso SSH**: O Ansible utiliza o protocolo SSH para conectar-se aos hosts remotos. É necessário que o acesso SSH esteja configurado e funcional.

3. **Inventário**: Defina os hosts e grupos de servidores no arquivo de inventário correspondente ao ambiente desejado (ex.: `ansible/inventory/prod.yml`).

## Como Utilizar

1. Clone este repositório para sua máquina local:
   ```bash
   git clone https://github.com/gabrieleeduardo/automation.git
   cd automation
   ```

2. Configure o arquivo de inventário com as informações dos servidores.

3. Execute o playbook principal:
   ```bash
   ansible-playbook -i ansible/inventory/prod.yml ansible/playbooks/install_docker.yaml
   ```

4. Acompanhe os logs para verificar o progresso e possíveis erros.

## Contribuição

Contribuições são bem-vindas! Siga os passos abaixo para colaborar:

1. Fork este repositório.
2. Crie uma nova branch:
   ```bash
   git checkout -b minha-feature
   ```
3. Realize as alterações desejadas e envie um pull request.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---

Comece a automatizar e simplificar suas tarefas repetitivas hoje mesmo! 🚀
