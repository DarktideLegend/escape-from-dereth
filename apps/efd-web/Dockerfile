FROM node:18-alpine
WORKDIR /app
RUN echo $(ls -a && pwd)
COPY ./dist/apps/efd-web/public ./
COPY ./dist/apps/efd-web/.next/standalone ./
COPY ./dist/apps/efd-web/.next/static ./dist/apps/efd-web/.next/
ENV NODE_ENV production
ENV PORT 3000
EXPOSE 3000
WORKDIR /app/apps/efd-web
CMD ["node", "server.js"]
