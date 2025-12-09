muted=$(wpctl status @DEFAULT_AUDIO_SINK | grep "muted" | awk '{print $2}')
if [ "$muted" == "true" ]; then
    echo true
else
    echo false
fi
