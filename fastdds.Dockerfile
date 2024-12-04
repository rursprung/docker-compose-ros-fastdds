ARG FROM_IMAGE=ros:jazzy
FROM $FROM_IMAGE

CMD ["fastdds", "discovery", "--server-id", "0"]
