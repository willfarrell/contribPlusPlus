# contribPlusPlus
Auto push commits to github.

## Step 1
Ensure you have your ssh config set up (`~/.ssh/config`).
```txt
Host *github.com
Hostname github.com
User GITHUB_USERNAME
IdentityFile ~/.ssh/github
```

## Step 2
Add `* */3 * * * sh contrib.sh -d /User/USERNAME/Sites/PROJECT -p GITHUB_PASSWORD` to your computer crontab. See [.crontab](https://github.com/willfarrell/dotCrontab) for instructions how.
