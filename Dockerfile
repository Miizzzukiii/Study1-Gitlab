# образ Node.js (легковесный)
FROM node:18.16.0-alpine 

#  рабочий каталог
WORKDIR ./todo-list-app

# тек дир- repo/todo-list-app копирую зависимости  в контейнер
COPY ./package.json ./yarn.lock .

# устанавливаем зависимости
RUN npm install

# копируем остальное 
COPY . .

# команда для запуска 
CMD [ "npm", "run", "dev" ]



