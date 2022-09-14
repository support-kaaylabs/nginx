FROM nginx:latest

RUN nginx --version

RUN npm --version

# Create app directory
WORKDIR /srv/api/

# Bundle app source

COPY package*.json .npmrc /srv/api/
RUN npm install
COPY . /srv/api/

# Confirm the working directory

RUN ls -ltr
EXPOSE 3000
EXPOSE 4000
CMD [ "sh", "-c","npm run $START_CMD" ]
