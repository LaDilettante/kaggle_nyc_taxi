all: train.csv test.csv

train.zip test.zip sample_submission.zip:
	cd data;kg download

train.csv : train.zip
	cd data;unzip train.zip
	touch train.csv

test.csv : test.zip
	cd data;unzip test.zip
	touch test.csv

sample_submission.csv : sample_submission.zip
	cd data;unzip sample_submission.zip
	touch sample_submission.csv
