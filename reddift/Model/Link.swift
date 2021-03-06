//
//  Link.swift
//  reddift
//
//  Created by generator.rb via from https://github.com/reddit/reddit/wiki/JSON
//  Created at 2015-04-15 11:23:32 +0900
//

import Foundation

/**
Link content.
*/
public class Link : Thing {
    /**
    example: self.redditdev
    */
    public var domain = ""
    /**
    example:
    */
    public var bannedBy = ""
    /**
    Used for streaming video. Technical embed specific information is found here.
    example: {}
    */
    public var mediaEmbed:MediaEmbed? = nil
    /**
    subreddit of thing excluding the /r/ prefix. "pics"
    example: redditdev
    */
    public var subreddit = ""
    /**
    the formatted escaped HTML text.  this is the HTML formatted version of the marked up text.  Items that are boldened by ** or *** will now have &lt;em&gt; or *** tags on them. Additionally, bullets and numbered lists will now be in HTML list format. NOTE: The HTML string will be escaped.  You must unescape to get the raw HTML. Null if not present.
    example: &lt;!-- SC_OFF --&gt;&lt;div class="md"&gt;&lt;p&gt;So this is the code I ran:&lt;/p&gt;
    &lt;pre&gt;&lt;code&gt;r = praw.Reddit(&amp;quot;/u/habnpam sflkajsfowifjsdlkfj test test test&amp;quot;)
    for c in praw.helpers.comment_stream(reddit_session=r, subreddit=&amp;quot;helpmefind&amp;quot;, limit=500, verbosity=1):
    print(c.author)
    &lt;/code&gt;&lt;/pre&gt;
    &lt;hr/&gt;
    &lt;p&gt;From what I understand, comment_stream() gets the most recent comments. So if we specify the limit to be 100, it will initially get the 100 newest comment, and then constantly update to get new comments.  It seems to works appropriately for every subreddit except &lt;a href="/r/helpmefind"&gt;/r/helpmefind&lt;/a&gt;. For &lt;a href="/r/helpmefind"&gt;/r/helpmefind&lt;/a&gt;, it fetches around 30 comments, regardless of the limit.&lt;/p&gt;
    &lt;/div&gt;&lt;!-- SC_ON --&gt;
    */
    public var selftextHtml = ""
    /**
    the raw text.  this is the unformatted text which includes the raw markup characters such as ** for bold. &lt;, &gt;, and &amp; are escaped. Empty if not present.
    example: So this is the code I ran:
    r = praw.Reddit("/u/habnpam sflkajsfowifjsdlkfj test test test")
    for c in praw.helpers.comment_stream(reddit_session=r, subreddit="helpmefind", limit=500, verbosity=1):
    print(c.author)
    ---
    From what I understand, comment_stream() gets the most recent comments. So if we specify the limit to be 100, it will initially get the 100 newest comment, and then constantly update to get new comments.  It seems to works appropriately for every subreddit except /r/helpmefind. For /r/helpmefind, it fetches around 30 comments, regardless of the limit.
    */
    public var selftext = ""
    /**
    how the logged-in user has voted on the link - True = upvoted, False = downvoted, null = no vote
    example:
    */
    public var likes:Bool? = nil
    /**
    example: []
    */
    public var userReports:[AnyObject] = []
    /**
    example:
    */
    public var secureMedia:AnyObject? = nil
    /**
    the text of the link's flair.
    example:
    */
    public var linkFlairText = ""
    /**
    example: 0
    */
    public var gilded = 0
    /**
    example: false
    */
    public var archived = false
    /**
    probably always returns false
    example: false
    */
    public var clicked = false
    /**
    example:
    */
    public var reportReasons:[AnyObject] = []
    /**
    the account name of the poster. null if this is a promotional link
    example: habnpam
    */
    public var author = ""
    /**
    the number of comments that belong to this link. includes removed comments.
    example: 10
    */
    public var numComments = 0
    /**
    the net-score of the link.  note: A submission's score is simply the number of upvotes minus the number of downvotes. If five users like the submission and three users don't it will have a score of 2. Please note that the vote numbers are not "real" numbers, they have been "fuzzed" to prevent spam bots etc. So taking the above example, if five users upvoted the submission, and three users downvote it, the upvote/downvote numbers may say 23 upvotes and 21 downvotes, or 12 upvotes, and 10 downvotes. The points score is correct, but the vote totals are "fuzzed".
    example: 2
    */
    public var score = 0
    /**
    example:
    */
    public var approvedBy = ""
    /**
    true if the post is tagged as NSFW.  False if otherwise
    example: false
    */
    public var over18 = false
    /**
    true if the post is hidden by the logged in user.  false if not logged in or not hidden.
    example: false
    */
    public var hidden = false
    /**
    full URL to the thumbnail for this link; "self" if this is a self post; "default" if a thumbnail is not available
    example:
    */
    public var thumbnail = ""
    /**
    the id of the subreddit in which the thing is located
    example: t5_2qizd
    */
    public var subredditId = ""
    /**
    example: false
    */
    public var edited = false
    /**
    the CSS class of the link's flair.
    example:
    */
    public var linkFlairCssClass = ""
    /**
    the CSS class of the author's flair.  subreddit specific
    example:
    */
    public var authorFlairCssClass = ""
    /**
    example: 0
    */
    public var downs = 0
    /**
    example: []
    */
    public var modReports:[AnyObject] = []
    /**
    example:
    */
    public var secureMediaEmbed:AnyObject? = nil
    /**
    true if this post is saved by the logged in user
    example: false
    */
    public var saved = false
    /**
    true if this link is a selfpost
    example: true
    */
    public var isSelf = false
    /**
    relative URL of the permanent link for this link
    example: /r/redditdev/comments/32wnhw/praw_comment_stream_messes_up_when_getting/
    */
    public var permalink = ""
    /**
    true if the post is set as the sticky in its subreddit.
    example: false
    */
    public var stickied = false
    /**
    example: 1429292148
    */
    public var created = 0
    /**
    the link of this post.  the permalink if this is a self-post
    example: http://www.reddit.com/r/redditdev/comments/32wnhw/praw_comment_stream_messes_up_when_getting/
    */
    public var url = ""
    /**
    the text of the author's flair.  subreddit specific
    example:
    */
    public var authorFlairText = ""
    /**
    the title of the link. may contain newlines for some reason
    example: [PRAW] comment_stream() messes up when getting comments from a certain subreddit.
    */
    public var title = ""
    /**
    example: 1429263348
    */
    public var createdUtc = 0
    /**
    example: 2
    */
    public var ups = 0
    /**
    example: 0.75
    */
    public var upvoteRatio = 0.0
    /**
    Used for streaming video. Detailed information about the video and it's origins are placed here
    example:
    */
    public var media:Media? = nil
    /**
    example: false
    */
    public var visited = false
    /**
    example: 0
    */
    public var numReports = 0
    /**
    example: false
    */
    public var distinguished = false
	
	public override func toString() -> String {
		var buf = "------------------------------\nid=\(id)\nname=\(name)\nkind=\(kind)\ntitle=\(title)\nurl=\(url)\n"
		if let media = media {
			buf += "media\n"
			buf += media.toString()
		}
		if let mediaEmbed = mediaEmbed {
			buf += "media_embed\n"
			buf += mediaEmbed.toString()
		}
		return buf
	}
}
