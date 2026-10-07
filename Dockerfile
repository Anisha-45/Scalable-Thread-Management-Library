FROM gcc:13

WORKDIR /app

COPY . .

RUN g++ -std=c++17 threadlab_web.cpp -o threadlab_web -pthread

EXPOSE 10000

CMD ["./threadlab_web"]
