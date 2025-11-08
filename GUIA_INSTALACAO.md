# 🎵 Guia de Instalação - MyInstants Discord Bot

Olá! Este guia vai te ajudar a rodar este bot do Discord na sua máquina, mesmo que você nunca tenha usado Python antes.

## 📋 O que você precisa instalar

### 1. Python (versão 3.8 ou superior)

**No Windows:**
1. Baixe o Python em: https://www.python.org/downloads/
2. **IMPORTANTE**: Durante a instalação, marque a opção "Add Python to PATH"
3. Após instalar, abra o terminal (Git Bash ou CMD) e teste:
```bash
python --version
```
Você deve ver algo como `Python 3.11.x`

### 2. FFmpeg (necessário para tocar áudio)

**No Windows:**
1. Baixe o FFmpeg em: https://www.gyan.dev/ffmpeg/builds/
2. Escolha a versão "ffmpeg-release-essentials.zip"
3. Extraia o arquivo ZIP
4. Copie a pasta para `C:\ffmpeg`
5. Adicione ao PATH do Windows:
   - Abra as "Variáveis de Ambiente"
   - Edite a variável "Path"
   - Adicione: `C:\ffmpeg\bin`
6. Teste no terminal:
```bash
ffmpeg -version
```

### 3. Token do Bot do Discord

Você precisa criar um bot no Discord:

1. Acesse: https://discord.com/developers/applications
2. Clique em "New Application"
3. Dê um nome ao seu bot
4. Vá em "Bot" no menu lateral
5. Clique em "Add Bot"
6. Copie o **TOKEN** (vai precisar dele depois)
7. Em "Privileged Gateway Intents", ative:
   - ✅ PRESENCE INTENT
   - ✅ SERVER MEMBERS INTENT
   - ✅ MESSAGE CONTENT INTENT
8. Salve as mudanças

### 4. Adicionar o bot ao seu servidor Discord

1. No painel de desenvolvedor, vá em "OAuth2" > "URL Generator"
2. Marque:
   - Em **Scopes**: `bot` e `applications.commands`
   - Em **Bot Permissions**: 
     - View Channels
     - Send Messages
     - Connect
     - Speak
     - Use Slash Commands
3. Copie a URL gerada e abra no navegador
4. Selecione seu servidor e autorize

## 🚀 Como rodar o projeto

### Passo 1: Configurar variáveis de ambiente

1. Crie um arquivo chamado `.env` na raiz do projeto (onde está este guia)
2. Adicione o token do seu bot:
```
MYINSTANTS_BOT_TOKEN=SEU_TOKEN_AQUI
```

**Dica**: Substitua `SEU_TOKEN_AQUI` pelo token que você copiou antes.

### Passo 2: Instalar dependências do Python

No terminal (Git Bash), dentro da pasta do projeto:

```bash
# Instalar as bibliotecas necessárias
pip install -r requirements.txt
```

Este comando vai instalar todas as bibliotecas Python que o bot precisa. Pode demorar alguns minutos.

### Passo 3: Rodar o bot!

```bash
# Executar o bot
python -m bot.run
```

Se tudo deu certo, você verá algo como:
```
Logged in as: SeuBot#1234 - 123456789
Synced X command(s)
```

## 🎮 Como usar o bot

Agora que o bot está online no seu servidor Discord, você pode usar os comandos:

- `/mi <nome do som>` - Busca e toca um som do MyInstants
- `/pause` - Pausa o som atual
- `/resume` - Retoma o som
- `/skip` - Pula para o próximo som
- `/queue` - Mostra a fila de sons
- `/now` - Mostra o som que está tocando
- `/loop` - Ativa/desativa repetição
- `/shuffle` - Embaralha a fila
- `/remove <índice>` - Remove um som da fila
- `/leave` - Desconecta o bot do canal de voz

## ❗ Problemas comuns

### "Python não é reconhecido..."
- Você esqueceu de marcar "Add Python to PATH" na instalação
- Solução: Reinstale o Python marcando essa opção

### "FFmpeg não encontrado"
- O FFmpeg não está no PATH
- Solução: Verifique se você adicionou `C:\ffmpeg\bin` às variáveis de ambiente

### "MissingBotToken"
- Você não criou o arquivo `.env` ou o token está errado
- Solução: Verifique o arquivo `.env` e o token

### Bot não responde aos comandos
- Verifique se você ativou os "Intents" no painel do Discord
- Certifique-se de estar em um canal de voz quando usar `/mi`

## 🐳 Alternativa: Usar Docker (Opcional)

Se você preferir usar Docker (mais simples, mas precisa instalar o Docker primeiro):

```bash
# Criar arquivo .env com seu token
# Depois executar:
docker compose up -d
```

## 📝 Conceitos Python vs JavaScript (para você entender melhor)

Se você vem do JavaScript, aqui estão algumas diferenças:

| JavaScript | Python |
|------------|--------|
| `npm install` | `pip install` |
| `package.json` | `requirements.txt` |
| `node index.js` | `python -m bot.run` |
| `.env` (precisa dotenv) | `.env` (tem suporte nativo) |
| `async/await` | `async/await` (mesma sintaxe!) |

## 🆘 Precisa de ajuda?

Se encontrar algum problema:
1. Verifique se todos os passos foram seguidos
2. Leia as mensagens de erro (geralmente indicam o problema)
3. Abra uma issue no GitHub do projeto

## ✨ Pronto!

Agora você tem um bot do Discord funcionando! Divirta-se tocando sons no seu servidor! 🎉

