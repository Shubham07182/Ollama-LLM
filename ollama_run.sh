#!/bin/bash
ollama serve &
sleep 2
ollama run llama3.2

#RUN IT USING 
chmod +x ollama_run.sh
