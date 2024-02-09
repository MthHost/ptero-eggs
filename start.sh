#!/bin/ash
rm -rf /home/container/tmp/*

echo "  
  __  __ _______ _    _ _    _  ____   _____ _______ 
 |  \/  |__   __| |  | | |  | |/ __ \ / ____|__   __|
 | \  / |  | |  | |__| | |__| | |  | | (___    | |   
 | |\/| |  | |  |  __  |  __  | |  | |\___ \   | |   
 | |  | |  | |  | |  | | |  | | |__| |____) |  | |   
 |_|  |_|  |_|  |_|  |_|_|  |_|\____/|_____/   |_|   
                                                     
                                                     "

echo "⟳ Starting PHP-FPM..."
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "⟳ Starting Nginx..."
echo "✓ Successfully started"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
