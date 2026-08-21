# Publicando suas próprias imagens Docker

A loja está preparada para imagens no GitHub Container Registry (GHCR).

Substitua `SEU_USUARIO` em todos os arquivos antes de publicar.

## WebUI

Use o código da sua WebUI v4 e publique:

```bash
docker build -t ghcr.io/SEU_USUARIO/dgbsolo-webui:latest .
docker push ghcr.io/SEU_USUARIO/dgbsolo-webui:latest
```

## MiningCore

Crie uma imagem a partir do código-fonte/licença do MiningCore que você escolher usar e publique:

```bash
docker build -t ghcr.io/SEU_USUARIO/dgbsolo-miningcore:latest .
docker push ghcr.io/SEU_USUARIO/dgbsolo-miningcore:latest
```

## DigiByte node

Crie uma imagem a partir do DigiByte Core que você escolher usar e publique:

```bash
docker build -t ghcr.io/SEU_USUARIO/dgbsolo-digibyte:latest .
docker push ghcr.io/SEU_USUARIO/dgbsolo-digibyte:latest
```

Não publique imagens de terceiros com seu nome sem verificar a licença e sem preservar os avisos de copyright/licença exigidos.
