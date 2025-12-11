from qutebrowser.api import interceptor

config.load_autoconfig(False)
c.aliases["ww"] = "session-save --only-active-window"
c.confirm_quit=["always"]
c.content.blocking.method="both"
c.content.pdfjs=True
c.downloads.location.remember=False
c.downloads.location.suggestion="both"
c.downloads.position="bottom"
c.downloads.remove_finished=60000
c.editor.command=["/opt/homebrew/bin/vimr", "--line", "{line}", "{file}"]
c.hints.chars="aoeuidhtns"
c.tabs.last_close="close"
c.tabs.new_position.unrelated="next"
c.tabs.position="right"
c.tabs.select_on_remove="prev"
c.tabs.show="multiple"
c.tabs.title.format="{audio}{relative_index}: {current_title}"
c.tabs.width="12%"
c.url.default_page="mail.google.com/mail/u/0/#inbox"
c.url.searchengines={'DEFAULT': 'https://google.com/search?q={}&udm=14'}
c.window.title_format="{audio}{host} {current_title}"

config.bind('I', 'mode-enter passthrough')
config.bind(';', 'cmd-set-text :')
config.bind('<Escape>', 'clear-keychain ;; clear-messages ;; search ;; fullscreen --leave')

config.bind('o', 'cmd-set-text -s :open -t')
config.bind('O', 'cmd-set-text -s :open')

config.bind('tdh', 'config-cycle -t -u *://{url:host}/* colors.webpage.darkmode.enabled ;; reload')
config.bind('tdu', 'config-cycle -t -u {url} colors.webpage.darkmode.enabled ;; reload')
config.bind('tdH', 'config-cycle -t -u *://*.{url.host}/* colors.webpage.darkmode.enabled ;; reload')

c.colors.webpage.darkmode.enabled=True
darkmodeexceptions = [
        '*://www.overleaf.com/project/*', # the editor theme is enough
        '*://mail.google.com/*', # the built-in darkmode is better
        '*://docs.google.com/*', # darkmode only inverts the menus, which looks awkward
        '*://math216.wordpress.com/*',
        '*://www.desmos.com/calculator/*',
        '*://dumu.math.duke.edu/dumu/py/*',
        '*://online-go.com/*'
        ]
for site in darkmodeexceptions:
    config.set("colors.webpage.darkmode.enabled", False, site)
c.colors.webpage.darkmode.policy.images="never"


def filter_youtube(info: interceptor.Request):
    """Block given request if necessary"""
    url = info.request_url
    if (
        url.host() == "www.youtube.com"
        and url.path() == "/get_video_info"
        and "&adformat=" in url.query()
    ):
        info.block()


interceptor.register(filter_youtube)
