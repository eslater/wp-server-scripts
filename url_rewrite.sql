UPDATE wp_options SET option_value = replace(option_value, 'localhost', 'CHANGEME') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, 'localhost', 'CHANGEME');
UPDATE wp_posts SET post_content = replace(post_content, 'localhost', 'CHANGEME');
UPDATE wp_postmeta SET meta_value = replace(meta_value, 'localhost', 'CHANGEME');
commit;
