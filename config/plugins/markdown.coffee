###
Overrides the default lineman-blog markdown settings. To see what the defaults
are, try running `lineman config markdown` or looking in:
  node_modules/lineman-blog/config/plugins/markdown.coffee
###
module.exports = (lineman) ->
  config:
    markdown:
      options:
        author: "David Conner"
        title: "te.xel.io"
        description: "where I post all my brilliant ideas"
        url: "https://te.xel.io"
        rssCount: 10 #<-- remove, comment, or set to zero to disable RSS generation
        disqus: "te-xel-io" #<-- uncomment and set your disqus account name to enable disqus support
