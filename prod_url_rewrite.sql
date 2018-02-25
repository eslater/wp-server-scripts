UPDATE wp_options SET option_value = replace(option_value, 'localhost', '159.65.233.90') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, 'localhost', '159.65.233.90');
UPDATE wp_posts SET post_content = replace(post_content, 'localhost', '159.65.233.90');
UPDATE wp_postmeta SET meta_value = replace(meta_value, 'localhost', '159.65.233.90');
UPDATE wp_options SET option_value = replace(option_value, '159.65.234.220', '159.65.233.90') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, '159.65.234.220', '159.65.233.90');
UPDATE wp_posts SET post_content = replace(post_content, '159.65.234.220', '159.65.233.90');
UPDATE wp_postmeta SET meta_value = replace(meta_value, '159.65.234.220', '159.65.233.90');
commit;
