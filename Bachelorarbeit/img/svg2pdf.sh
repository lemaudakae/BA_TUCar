#!/bin/bash
for file in $PWD/*.svg
    do
        pdfname=$(basename "$file" .svg) #Nur Dateiname ohne Pfad und Endung .svg nutzen
        inkscape "$file" --export-pdf "$pdfname.pdf"
    done
