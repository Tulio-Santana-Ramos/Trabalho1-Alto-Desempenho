CC = gcc
FLAGS = -O3 -Wall -Wextra -lm -fopenmp -Wunused -pedantic -ansi -std=c11
SEQUENCIAL = studentsseq
PARALELO = studentspar
SEQUENCIAL_FOLDER = codigo-sequencial
PARALLEL_FOLDER = codigo-paralelo

all:
	$(CC) -o $(SEQUENCIAL) ./$(SEQUENCIAL_FOLDER)/$(SEQUENCIAL).c $(FLAGS)  
	$(CC) -o $(PARALELO) ./$(PARALLEL_FOLDER)/$(PARALELO).c $(FLAGS)

debug:
	$(CC) -o $(SEQUENCIAL) ./$(SEQUENCIAL_FOLDER)/$(SEQUENCIAL).c $(FLAGS) -DDEBUG
	$(CC) -o $(PARALELO) ./$(PARALLEL_FOLDER)/$(PARALELO).c $(FLAGS) -DDEBUG

time:
	$(CC) -o $(SEQUENCIAL) ./$(SEQUENCIAL_FOLDER)/$(SEQUENCIAL).c $(FLAGS) -DRESPONSE_TIME_TESTING 
	$(CC) -o $(PARALELO) ./$(PARALLEL_FOLDER)/$(PARALELO).c $(FLAGS) -DRESPONSE_TIME_TESTING -Wno-maybe-uninitialized

sequencial:
	./$(SEQUENCIAL)

paralelo:
	./$(PARALELO)
	
