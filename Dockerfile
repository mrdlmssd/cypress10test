FROM cypress/browsers:node16.14.2-slim-chrome103-ff102
RUN mkdir /demo
WORKDIR /demo
COPY ./package.json .
COPY ./cypress.config.js .
COPY ./cucumber-json-formatter .
COPY ./cucumber-html-report.js .
COPY ./cypress-cucumber-preprocessorrc.json .
COPY ./cypress ./cypress
RUN npm install
ENTRYPOINT ["npx","cypress","run"]
CMD [""]
