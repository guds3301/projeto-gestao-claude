# OmniRoute com Claude Code

[OmniRoute](https://github.com/diegosouzapw/OmniRoute) é um gateway de IA de código aberto (MIT) que expõe um endpoint único (porta `20128`) compatível com OpenAI, Anthropic e Gemini, roteando para vários provedores.

> Cuidado: o gateway faz suas requisições passarem por provedores e contas de terceiros. Leia a documentação, confira os termos de cada provedor e avalie o risco para suas chaves e dados antes de usar.

## Instalação (máquina local)

Requer Node.js e npm.

```bash
./scripts/install-omniroute.sh
```

Ou manualmente:

```bash
npm install -g omniroute
omniroute setup     # assistente de primeira execução
omniroute           # sobe gateway + dashboard em http://localhost:20128
omniroute doctor    # diagnostica provedores, portas e dependências
```

Adicione os provedores pelo dashboard em `http://localhost:20128`.

## Usar com o Claude Code

Opção 1: iniciar o Claude Code já apontando para o OmniRoute:

```bash
omniroute run claude --model <provedor/modelo>
```

Opção 2: dar ao Claude as ferramentas do OmniRoute via MCP:

```bash
claude mcp add --transport http omniroute http://localhost:20128/api/mcp/stream
```

O README do projeto mostra `claude mcp add-server ...`; confirme a sintaxe da sua versão com `claude mcp add --help`.

## Observações

- O gateway roda na sua máquina; em sessões do Claude Code na nuvem, `localhost` não é acessível.
- Configuração específica: <https://github.com/diegosouzapw/OmniRoute/wiki/Claude-Code-Configuration>
- Skills do OmniRoute: <https://github.com/diegosouzapw/OmniRoute/wiki/Skills>
