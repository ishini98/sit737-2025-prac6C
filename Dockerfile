# ---------- build stage ----------
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .

# ---------- runtime stage ----------
FROM node:18-alpine
WORKDIR /app
COPY --from=build /app .
RUN addgroup -S app && adduser -S app -G app
USER app          # non‑root
EXPOSE 8080
CMD ["npm","start"]
