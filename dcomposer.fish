function dcomposer
    read --prompt " echo 'PHP version (8.1, 8.2): ' " -l php_version
    read --prompt " echo 'Composer command: ' " -l composer_command

    set -l current_dir (pwd)

    if [ $php_version = "8.1" ]
        docker run --rm --interactive --tty --volume $current_dir:/app composer/composer:2.3.9 $composer_command
    end

    if [ $php_version = "8.2" ]
        docker run --rm --interactive --tty --volume $current_dir:/app composer/composer:2.6.6 $composer_command
    end
end
