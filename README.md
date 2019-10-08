# ICLR2020 Search & Download 
Feel free to use this to download all ICLR2020 Papers. You can also use this to look up an specific word, name, regex, etc. (So you can search for your own name to see if someone has cited your papers, so you can use it to see how many citations you're gonna get after the ICLR2020 has been indexed by google scholar).

### Update: 
You can now sort the papers, based on the number of comments. I personally do that to read the papers that got the most attention first. 

### Requirements
For downloading the papers, this script uses `curl`. To look up in the pdf files, you need to have `pdfgrep` installed. To download all of the papers, you need roughly 7.5GB of storage on your machine. 

### Installation 
To install `pdfgrep`, on mac use: 
```
brew install pdfgrep
```

### How to use
To download the manifest of all the papers run :
```
source getICLR2020.sh > index.txt 
```

Then to download all of the papers after you download the manifest, use:
```
source getpdfs.sh
```

Finally, to look up your own name use: 
```
source findall.sh "My name" > file_to_save_output.txt
```

### Update 
To see the list of top 20 papers, based on the number of comments, just run: 
```
source sort_comment.sh 20
```

You can alternatively, run `sort_comment.sh` and see the complete list of sorted papers in file `sorted.txt`
