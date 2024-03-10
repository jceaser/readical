# ReadIcal

ReadIcal is a small application which reads in an ics file and outputs markdown files from a subset of events. This is used to create time based content for web sites.

## Use case

Publish events on google calendar and grab an ics link such as this:

    https://calendar.google.com/calendar/ical/-some unique code-%40group.calendar.google.com/public/basic.ics

curl this down and pipe it to readical for processing. ReadIcal will then parse the file and look for events matching the time frame of interest, normally this would be one month in the future and a couple af days in the past so that the up coming events will be seen and users can still see active or just finished events. Change these settings with command line flags. Markdown can also be customized with a flag.

## Flags

| Flag          | Arguments | Description |
| ------------- | --------- | ----------- |
| -after-days   | int       | days to keep event after date (default 1)
| -after-months | int       | months to keep event after date
|  -date        | string    | date to use (optional, for testing)
|  -icons       | string    | File defining icon maps, - to output internal file (default "icon_keys.json")
|  -limit       | int       | max number of events to return
|  -no-html     |           | Do not convert markdown to HTML
|  -out         | string    | directory to write output to (default "out")
|  -out-days    | int       | months to look forward
|  -out-months  | int       | months to look forward (default -1)
|  -template    | string    | Event Template File
|  -timezone    | int       | timezone offset (default -4)
|  -verbose     |           | send more text to err
|  -version     |           | Report application version information

## Related tools

This project is made to be use in connection with serveral others:

* https://github.com/jceaser/gotools/blob/develop/md2html.go - markdown site to HTML site
* https://github.com/jceaser/gcss - css preprocessor
* https://github.com/jceaser/readical - event to markdown generater.

Example sites: https://catonsville306.org

---
Copyright 2024 (c) all rights reserved Thomas.Cherry@gmail.com
License, none.