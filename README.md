# DGB Solo Community App Store

Community App Store para Umbrel OS com os componentes de uma pool DigiByte SHA-256 SOLO.

## Apps

- `dgbsolo-digibyte-node` — node DigiByte SHA-256/RPC/ZMQ
- `dgbsolo-postgres` — PostgreSQL dedicado ao MiningCore
- `dgbsolo-miningcore` — servidor MiningCore
- `dgbsolo-webui` — WebUI profissional da pool

## Importante

Os manifests desta loja **não reutilizam intencionalmente as imagens `theretromike/*`**.

Antes de instalar os apps, publique suas próprias imagens Docker e substitua nos `docker-compose.yml`:

- `ghcr.io/SEU_USUARIO/dgbsolo-miningcore:latest`
- `ghcr.io/SEU_USUARIO/dgbsolo-digibyte:latest`
- `ghcr.io/SEU_USUARIO/dgbsolo-webui:latest`

O PostgreSQL usa a imagem oficial `postgres:16-alpine`.

## Ordem de instalação recomendada

1. DGB Solo PostgreSQL
2. DGB Solo DigiByte Node
3. DGB Solo MiningCore
4. DGB Solo WebUI

Todos os apps usam a rede externa `umbrel_main_network`.

## Adicionar no Umbrel

Depois de publicar este repositório no GitHub:

1. Abra **App Store > Community App Stores**.
2. Adicione a URL do seu repositório GitHub.
3. Atualize a loja e instale os apps na ordem acima.

O template oficial do Umbrel exige que todos os IDs de apps comecem pelo ID da loja (`dgbsolo`).

## Migração

Não remova os containers atuais antes de validar os novos apps.

Primeiro:
- copie o `config.json` atual;
- copie o `coins.json`;
- faça backup do PostgreSQL;
- preserve os dados do node DigiByte;
- valide RPC, ZMQ, Stratum e API na nova stack.

Depois de confirmar shares aceitas e API funcionando, desative a instalação antiga.
