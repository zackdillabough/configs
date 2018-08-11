# keep GUI config options
config.load_autoconfig()

c.url.searchengines = {
        "DEFAULT": "https://www.google.com/search?q={}",
        'red': 'https://reddit.com/r/{}',
        'tw': 'https://twitter.com/{}',
        'aw': 'https://wiki.archlinux.org/index.php?title=Special%3ASearch&search={}',
        'yt': 'https://www.youtube.com/results?search_query={}',
#        'ytv': 'https://youtube.com/search?q={}',
        }
