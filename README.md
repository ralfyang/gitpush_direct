# ~~git add; status; commit; push; checkout branch~~
# 만날 치기 귀찮아서 직접 만든 스크립트(I'm a lazy guy to type a git commit every time. So that's why I made it! )
### ~~(초급자는 받지말것. 공부 할 것)~~

### Install
* Install easy as below
```
curl -sL bit.ly/gitauto |bash
```

### Use
* git update for master
```
$ gitpush

On branch master
Your branch is up-to-date with 'origin/master'.
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   gitpush
	modified:   gitpush-branch
	new file:   install.sh


===========================================================================
 Please push the Enter key if you confirmed or "n" for stop [Enter / n]
===========================================================================


[master 5bae369] update for install
 Committer: ralfyang@ralf-MacBook-Pro.local
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly:

    git config --global user.name "Your Name"
    git config --global user.email you@example.com

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 3 files changed, 27 insertions(+), 2 deletions(-)
 create mode 100755 install.sh
Counting objects: 5, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 842 bytes | 0 bytes/s, done.
Total 5 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To git@github.com:goody80/gitpush_direct.git
   c6fdfcd..5bae369  master -> master
Branch master set up to track remote branch master from origin.



```

* git update with commit comment?
```
$ gitpush 'update for README'
```


* git update for branch
```
$ gitpush-branch

Switched to branch 'gh-pages'
From github.com:goody80/gitpush_direct
 * branch            gh-pages   -> FETCH_HEAD
Already up-to-date.
First, rewinding head to replay your work on top of it...
Fast-forwarded gh-pages to master.
On branch gh-pages
nothing to commit, working directory clean

===========================================================================
 Please push the Enter key if you confirmed or "n" for stop [Enter / n]
===========================================================================


Total 0 (delta 0), reused 0 (delta 0)
To git@github.com:goody80/gitpush_direct.git
   5bae369..3b3958e  gh-pages -> gh-pages
Switched to branch 'master'
Your branch is up-to-date with 'origin/master'.
```
