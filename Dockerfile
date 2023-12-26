FROM mcr.microsoft.com/playwright:v1.40.0-jammy
WORKDIR /opt/app
ADD *.json ./
RUN npm install
ADD . .

CMD ["npx", "playwright", "test"]
