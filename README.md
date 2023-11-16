### To get started with building PixelOS GSI,
you'll need to get familiar with [Git and Repo](https://source.android.com/source/using-repo.html) as well as [How to build a GSI](https://github.com/phhusson/treble_experimentations/wiki/How-to-build-a-GSI%3F).


### Create the directories

As a first step, you'll have to create and enter a folder with the appropriate name.
To do that, run these commands:

```bash
mkdir PixelOS
cd PixelOS
```

### To initialize your local repository, run this command:

```bash
repo init -u https://github.com/PixelOS-Fourteen/manifest.git -b fourteen --git-lfs
```


### Afterwards, sync the source by running this command:

```bash
repo sync --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
```


### After syncing, apply the patches:

```
bash treble_patch/apply-patches.sh .
```

