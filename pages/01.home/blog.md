---
title: Home
media_order: 'header.jpg,mongolia.jpg,mountain.jpg'
process:
    markdown: true
    twig: false
twig_first: true
child_type: item
hero_classes: 'text-light title-h1h2 parallax overlay-dark-gradient hero-large'
hero_image: mountain.jpg
blog_url: /blog
show_sidebar: true
show_breadcrumbs: true
show_pagination: true
content:
    items:
        - '@self.children'
    limit: 5
    order:
        by: date
        dir: desc
    pagination: true
    url_taxonomy_filters: true
feed:
    limit: 10
hide_git_sync_repo_link: false
bricklayer_layout: true
display_post_summary:
    enabled: false
---

# Ondrej in the air
## Python, geology, ubuntu…