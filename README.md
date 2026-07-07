# homebrew-devgate

Homebrew tap for the [devgate](https://devgate.online) agent.

```sh
brew install dmitryhawk/devgate/devgate
```

or

```sh
brew tap dmitryhawk/devgate
brew install devgate
```

Then connect your account and go:

```sh
devgate config add-authtoken <YOUR_TOKEN>   # from https://devgate.online/dashboard
devgate http 3000
```

Prefer curl? `curl -fsSL https://devgate.online/install.sh | sh`
