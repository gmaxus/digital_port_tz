# Установка Среды разработки в Vagrant – тестовое задание для Digital port 

## Установка Virtualbox и Vagrant
* Установка [virtualbox 6.0](https://www.virtualbox.org/wiki/Download_Old_Builds_6_0) ( Vagrant 2.2.6 не поддерживает Virtualbox 6.1 )
* Установка [virtualbox extension pack](https://www.virtualbox.org/wiki/Download_Old_Builds_6_0)
* Установка [vagrant](https://www.vagrantup.com/downloads.html)

## Установка hosts плагина для vagrant
```bash
$ vagrant plugin install vagrant-hostsupdater
```
Для автоматического ввода пароля при вносе необходимых параметров в файл hosts(для unix систем), в файл:
```bash
/etc/sudoers.d/vagrant_hostsupdater
```
необходимо добавить (для Ubuntu и большинства Linux систем)
```
# Allow passwordless startup of Vagrant with vagrant-hostsupdater.
Cmnd_Alias VAGRANT_HOSTS_ADD = /bin/sh -c echo "*" >> /etc/hosts
Cmnd_Alias VAGRANT_HOSTS_REMOVE = /bin/sed -i -e /*/ d /etc/hosts
%sudo ALL=(root) NOPASSWD: VAGRANT_HOSTS_ADD, VAGRANT_HOSTS_REMOVE
```
для MacOS
```
# Allow passwordless startup of Vagrant with vagrant-hostsupdater.
Cmnd_Alias VAGRANT_HOSTS_ADD = /bin/sh -c echo "*" >> /etc/hosts
Cmnd_Alias VAGRANT_HOSTS_REMOVE = /usr/bin/sed -i -e /*/ d /etc/hosts
%admin ALL=(root) NOPASSWD: VAGRANT_HOSTS_ADD, VAGRANT_HOSTS_REMOVE
```
 
## Копирование репозитория	
```bash
$ git clone https://github.com/gmaxus/digital_port_tz.git
```

## Подготовка и запуск виртуальной машины
```bash
$ cd ../../vagrant
$ vagrant up
```

## Отображение welcome страницы Laravel
 [www.digitalport.local](http://www.digitalport.local)