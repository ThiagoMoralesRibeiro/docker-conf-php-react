# Usa a imagem base do Node.js apropriada. Aqui, uma versão mais recente e estável é usada.
FROM node:14.17.0

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/app

# Copia os arquivos de configuração do NPM (package.json e package-lock.json, se disponível)
COPY package*.json ./

# Instala as dependências do projeto usando npm install. O silent é só pra não ficar essa tranqueira de log
RUN npm install --silent

# Copia todos os arquivos do projeto para o diretório de trabalho do contêiner
COPY . .

# Exponha a porta 3000, a porta na qual o aplicativo será executado
EXPOSE 3000

# Define o comando para iniciar o aplicativo
CMD ["npm", "start"]

