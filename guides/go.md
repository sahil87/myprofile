# Installing go and Hugo

## Install go

> from [golang.org](https://golang.org/doc/install)

```sh
wget https://storage.googleapis.com/golang/go1.10.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.10.linux-amd64.tar.gz
```

### Specify go home and add go and go downloaded binaries to your PATH

* Add `export GOPATH=~/code/go` in your `.bashrc` file
* Add `/usr/local/go/bin` and `$GOPATH/bin` to your PATH variable in `.bashrc` *after* the GOPATH line

## Install Hugo

> from [hugo's github](https://github.com/gohugoio/hugo/releases/)

```sh
wget https://github.com/gohugoio/hugo/releases/download/v0.36.1/hugo_0.36.1_Linux-64bit.deb
sudo apt install ./hugo_0.36.1_Linux-64bit.deb
```
