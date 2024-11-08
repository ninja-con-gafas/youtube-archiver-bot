#!/bin/bash

export AIRFLOW_HOME="/home/atharv/Documents/Repositories/youtube-archiver-bot/airflow/"
export AIRFLOW__CORE__DAGS_FOLDER="/home/atharv/Documents/Repositories/youtube-archiver-bot/dags/"
export AIRFLOW__CORE__LOAD_EXAMPLES=False

export YOUTUBE_VIDEO_REPOSITORY_PATH="/mnt/226AE8B26AE883BF/YouTube Archives/"
export DOWNLOAD_PATH="$YOUTUBE_VIDEO_REPOSITORY_PATH/videos/"
export FEED_PATH="$YOUTUBE_VIDEO_REPOSITORY_PATH/feed/"

export GEMINI_DEVELOPER_API_KEY_PATH="/home/atharv/Desktop/Keys/youtube-archiver-bot/gemini.key"
export UPLOADER_BOT_SERVICE_ACCOUNT_KEY_PATH="/home/atharv/Desktop/Keys/youtube-archiver-bot/uploader.json"

export PYTHONPATH="$PYTHONPATH:/home/atharv/Documents/Repositories/google/"

if airflow standalone & then
    echo "Airflow standalone started successfully."
else
    echo "Failed to start Airflow standalone." >&2
    exit 1
fi

if airflow scheduler; then
    echo "Airflow scheduler started successfully."
else
    echo "Failed to start Airflow scheduler." >&2
    exit 1
fi
