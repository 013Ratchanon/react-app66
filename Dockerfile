# ใช้ Node.js เพื่อติดตั้งและ Build Vue.js
FROM node:22 AS builder
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

# ตรวจสอบว่าไฟล์ถูกสร้างจริง
RUN ls -la /app/dist
