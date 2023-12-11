#! /bin/bash

echo Welcome To OpenSource DBMS

MyDB=$1

select choice in CreateTable DeleteTable listTables ReadTable RenameTable InsertUpdate Back Exit
do
    
    case $choice in
        
        CreateTable)
            source ./TableScripts/CreateTable $MyDB
        ;;
        DeleteTable)
            source ./DeleteTable
        ;;
        listTables)
            source ./listTables
        ;;
        ReadTable)
            source ./ReadTable
        ;;
        RenameTable)
            source ./RenameTable
        ;;
        Insert)
            #source ./Insert
        ;;
        Update)
            #source ./Update
        ;;
        Back)
            #call main menue script
        ;;
        Exit)
            exit
        ;;
        *)
        ;;
    esac
    
done
