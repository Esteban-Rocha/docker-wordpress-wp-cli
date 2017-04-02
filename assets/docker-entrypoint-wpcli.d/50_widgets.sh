#!/bin/bash
echo 'Configuring Widgets'

# remove defaults
$WP widget delete search-2 blog-sidebar
$WP widget delete recent-posts-2 blog-sidebar
$WP widget delete recent-comments-2 blog-sidebar
$WP widget delete archives-2 blog-sidebar
$WP widget delete categories-2 blog-sidebar

# install/activate some favorites

# show what we end up with in blog sidebar
$WP widget list blog-sidebar
