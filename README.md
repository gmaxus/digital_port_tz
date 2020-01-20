# Установка Среды разработки в Vagrant – Liam Project 

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
 
## Копирование репозитория	
```bash
$ git clone https://github.com/gmaxus/liam_project.git
```

## Подготовка и запуск виртуальной машины
```bash
$ cd ../../vagrant
$ vagrant up
```

## Отображение welcome страницы Laravel
 [www.liam.local](http://www.liam.local)