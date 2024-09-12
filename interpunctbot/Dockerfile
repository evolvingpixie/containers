FROM node:22
# Link package to repo for publishing with actions
LABEL org.opencontainers.image.source="https://github.com/evolvingpixie/containers" 
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  apt update && apt install python-is-python3 
WORKDIR /bot
RUN git clone https://github.com/pfgithub/interpunctbot /bot
RUN corepack enable && ls -l
RUN yarn install --inline-builds
#RUN yarn knex migrate:latest
RUN yarn tsc
RUN echo hello

CMD ["yarn", "knex", "migrate:latest"]
CMD ["yarn", "tsc"]
CMD ["node", "built"]
