TARGET = programa

# Diretórios
SRC_DIR = src
TELAS_DIR = $(SRC_DIR)/telas
USUARIOS_DIR = $(SRC_DIR)/usuarios

# Arquivos de código-fonte
MAIN = $(SRC_DIR)/main.c
SRC_FILES = $(TELAS_DIR)/telas.c $(USUARIOS_DIR)/usuarios.c
INCLUDE_DIRS = -I $(TELAS_DIR) -I $(USUARIOS_DIR)

# Compilador e flags
CC = gcc
CFLAGS = -Wall

# Regra para compilar o programa
$(TARGET): $(MAIN) $(SRC_FILES)
	$(CC) $(CFLAGS) $(INCLUDE_DIRS) -o $(TARGET) $(MAIN) $(SRC_FILES)

# Limpeza dos arquivos compilados
clean:
	rm -f $(TARGET)