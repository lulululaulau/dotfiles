from qutebrowser.api import interceptor

config.load_autoconfig()
c.tabs.position="right"
c.tabs.show="always"
c.confirm_quit=["downloads"]
c.content.pdfjs=True
c.content.blocking.method="both"
c.downloads.position="bottom"
c.downloads.remove_finished=60000
c.downloads.location.remember=False
c.downloads.location.suggestion="both"
c.tabs.width="12%"
c.url.searchengines={"DEFAULT":"https://google.com/search?q={}"}
c.url.default_page="mail.google.com/mail/u/0/#inbox"
c.tabs.last_close="close"
c.tabs.select_on_remove="next"
c.tabs.title.format="{audio}{relative_index}: {current_title}"
c.tabs.new_position.unrelated="next"
c.editor.command=["/opt/homebrew/bin/vimr", "--line", "{line}", "{file}"]
c.window.title_format="{audio}{host} {current_title}"
c.bindings.commands={"normal": {"I": "mode-enter passthrough"}}


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
