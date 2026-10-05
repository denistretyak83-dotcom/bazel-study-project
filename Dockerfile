# === ЭТАП 1: СБОРКА ПРИЛОЖЕНИЯ ===
FROM gcr.io/bazel-public/bazel:latest AS builder

WORKDIR /workspace
COPY . .
RUN bazel build //:my_app --cxxopt="-std=c++20"

# Копируем реальный бинарник из кэша во временную папку первой стадии
RUN cp $(bazel info bazel-bin)/my_app /workspace/app


# === ЭТАП 2: ФИНАЛЬНЫЙ МИНИМАЛЬНЫЙ ОБРАЗ ===
FROM ubuntu:24.04

WORKDIR /root/

# Забираем ОДИН готовый файл "app" из первой стадии сборщика
COPY --from=builder /workspace/app .

# Запускаем его в чистой системе
CMD ["./app"]
