CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -std=c99 -Iinclude

SRC_DIR = src
TEST_DIR = tests

SRCS = $(SRC_DIR)/main.c \
       $(SRC_DIR)/bmi_calculator.c \
       $(SRC_DIR)/input_validation.c \
       $(SRC_DIR)/ui.c

TEST_SRCS = $(TEST_DIR)/test_bmi_calculator.c \
            $(SRC_DIR)/bmi_calculator.c

OBJS = $(SRCS:.c=.o)
TEST_OBJS = $(TEST_SRCS:.c=.o)

TARGET = bmi_calculator
TEST_TARGET = test_bmi_calculator

.PHONY: all clean test

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

$(TEST_TARGET): $(TEST_OBJS)
	$(CC) $(CFLAGS) -o $@ $(TEST_OBJS)

test: $(TEST_TARGET)

clean:
	rm -f $(OBJS) $(TEST_OBJS) $(TARGET) $(TEST_TARGET)
