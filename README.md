<center>
    <img src="https://raw.githubusercontent.com/DeakinInfoSecClub/DeakinInfoSecClub.github.io/master/static/img/og-image.png" style="object-fit: cover; height:300px; width: 100%;">
    <h1>DISC: the website</h1>
    <p>This github repo contains the <a href="http://jekyllrb.com/">jekyll</a> blog for the <a href="https://deakininfosec.com.au"><strong>DISC</strong> website</a>.</p>
    <br/>
</center>

> _Please note: If you're not overwhelmingly technical and the below information seems way over your head, that's okay!
> Message `@ketz` on [slack](https://discclub.slack.com), and we'll be able to submit your contributions for you._

## How do I run this locally?

### Install the dependencies:
- `ruby` ([installation guide](https://www.ruby-lang.org/en/documentation/installation/))
- `gem` ([download here](https://rubygems.org/pages/download))
- `git` ([download here](https://git-scm.com/downloads))
- `jekyll` ([installation guide](https://jekyllrb.com/docs/installation/))

### Follow the steps:
1. Open a terminal window and navigate to where you want to store the website files.
2. Clone this repo:
    - `$ git clone https://github.com/DeakinInfoSecClub/DeakinInfoSecClub.github.io`.
2. Enter the directory:
    - `$ cd DeakinInfoSecClub.github.io`
3. Run the development script:
    - `$ ./run.sh`

**Or** run this one-liner: `git clone https://github.com/DeakinInfoSecClub/DeakinInfoSecClub.github.io && cd DeakinInfoSecClub.github.io && ./run.sh;`

## What should I know about if I want to contribute?

You'll probably want a bit of an understanding about [markdown](https://daringfireball.net/projects/markdown/) and its [syntax](https://daringfireball.net/projects/markdown/syntax).

Beyond that, any topic that you think might be useful for other to know about, or if you once ran into a problem and found a solution that might help someone else, then this is the perfect place to post that.

The main idea of the knowledge base is to grow together as a team.

### Types of content
At the moment we are accepting submissions for the following kinds of content:

- Articles
    - e.g: blog posts, research about a topic, writeups for a CTF or challenge.
- Cheatsheets
    - Quick reference guides to help get up to speed with a topic quickly.
- Workshops
    - Tutorial-style content that can be followed along to achieve some kind of output at the end.

Although they are **not** user-contributable, we additionally have:
- Sessions
    - Recordings of previous weekly sessions _(not all of these are available, but as many as possible are uploaded)_.

### How do I add my own content?

1. Fork and clone this repository.
2. Add your markdown file containing your content to the correct subfolder underneath `content/`.
3. Check that the correct [front matter](https://jekyllrb.com/docs/front-matter/) is applied at the top of your post.
    - At a minimum, ensure a date, title and author exists:
        ```markdown
        ---
        title: My excellent content
        date: YYYY-MM-DD
        author:
            - username
        ---
        ```
4. _OPTIONAL:_ You can create a profile page as well, by adding a `<username>.md` file to the `content/_profiles` directory.

    Set the `title` front matter of this page to be the exact same string as your author values on your content and this page will automatically update when you add more/

5. Commit your changes


## Problems, questions?
Send a message to `@ketz` on [slack](https://discclub.slack.com).
