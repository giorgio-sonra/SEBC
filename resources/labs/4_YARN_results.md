# Yarn Results

* In general, Use more the maximum available memory 2730MB doesn't help, it's better to be out of the limit.
* Twice memory, below of limit didn't helpe the teraort perform better results, the gap involves more the disks and cpus thean the memory in this scenario.
* With 9 VCores available (3 x 3), it's better to release 1 for the Application Master.
* The same number of mapper em reducers also contributed more to get better speed.


## Min/Max Test Cases
| Duration     | Mappers | Reducers | Memory       | Tera Gen     | Tera Sorte
--- | ------------ | ------- | -------- | ------------ | ------------ | ------------
MIN | 6m 15s 486ms | 8       | 8        | 1024         | 2m 39s 466ms | 3m 28s 351ms
MAX | 7m 26s 912ms | 12      | 3        | 2730         | 3m 17s 501ms | 4m 20s 141ms




## All Test Cases
Total Duration | Mappers | Reducers | Memory | Tera Gen | Tera Sort  
------------ | - | - | ---- | ------------ | -----------                        
6m 15s 486ms | 8 | 8 | 1024 | 2m 45s 48ms | 3m 30s 438ms  
6m 18s 135ms | 8 | 6 | 1024 | 2m 47s 797ms | 3m 30s 338ms  
6m 19s 106ms | 9 | 6 | 1024 | 2m 46s 478ms | 3m 32s 628ms  
6m 20s 365ms | 9 | 6 | 2048 | 2m 45s 827ms | 3m 34s 538ms  
6m 20s 745ms | 6 | 8 | 1024 | 2m 43s 936ms | 3m 36s 809ms  
6m 21s 430ms | 8 | 8 | 2048 | 2m 46s 87ms | 3m 35s 343ms  
6m 22s 904ms | 9 | 8 | 1024 | 2m 54s 553ms | 3m 28s 351ms  
6m 23s 125ms | 6 | 8 | 2048 | 2m 39s 466ms | 3m 43s 659ms  
6m 23s 149ms | 8 | 8 | 512 | 2m 41s 975ms | 3m 41s 174ms  
6m 24s 196ms | 8 | 6 | 2048 | 2m 48s 855ms | 3m 35s 341ms  
6m 26s 415ms | 9 | 8 | 512 | 2m 51s 259ms | 3m 35s 156ms  
6m 28s 685ms | 6 | 9 | 1024 | 2m 50s 111ms | 3m 38s 574ms  
6m 29s 124ms | 8 | 6 | 512 | 2m 48s 352ms | 3m 40s 772ms
6m 32s 399ms | 9 | 3 | 2048 | 2m 51s 171ms | 3m 41s 228ms  
6m 33s 38ms | 8 | 3 | 2048 | 2m 46s 880ms | 3m 46s 158ms  
6m 33s 50ms | 6 | 9 | 2048 | 2m 45s 503ms | 3m 47s 547ms  
6m 35s 228ms | 6 | 6 | 2048 | 2m 55s 605ms | 3m 39s 623ms  
6m 35s 739ms | 6 | 9 | 512 | 2m 51s 133ms | 3m 44s 606ms  
6m 38s 447ms | 9 | 8 | 2048 | 2m 49s 513ms | 3m 48s 934ms  
6m 39s 167ms | 6 | 6 | 1024 | 2m 52s 809ms | 3m 46s 358ms  
6m 39s 527ms | 9 | 9 | 1024 | 2m 55s 721ms | 3m 43s 806ms  
6m 39s 681ms | 9 | 9 | 512 | 2m 54s 326ms | 3m 45s 355ms  
6m 40s 314ms | 9 | 6 | 512 | 2m 55s 172ms | 3m 45s 142ms  
6m 40s 768ms | 12 | 8 | 1024 | 3m 1s 65ms | 3m 39s 703ms  
6m 43s 17ms | 12 | 6 | 2048 | 3m 2s 605ms | 3m 40s 412ms  
6m 43s 251ms | 12 | 6 | 512 | 2m 58s 10ms | 3m 45s 241ms  
6m 43s 588ms | 8 | 9 | 1024 | 2m 53s 85ms | 3m 50s 503ms  
6m 44s 129ms | 12 | 6 | 1024 | 2m 52s 658ms | 3m 51s 471ms  
6m 44s 996ms | 8 | 9 | 2048 | 2m 52s 337ms | 3m 52s 659ms  
6m 46s 584ms | 9 | 9 | 2048 | 3m 0s 274ms | 3m 46s 310ms  
6m 47s 285ms | 9 | 3 | 1024 | 2m 55s 818ms | 3m 51s 467ms  
6m 48s 2ms | 8 | 6 | 2730 | 2m 57s 660ms | 3m 50s 342ms  
6m 48s 174ms | 9 | 6 | 2730 | 2m 55s 52ms | 3m 53s 122ms  
6m 51s 213ms | 6 | 6 | 512 | 2m 53s 985ms | 3m 57s 228ms  
6m 52s 498ms | 8 | 3 | 512 | 2m 51s 201ms | 4m 1s 297ms  
6m 53s 347ms | 8 | 3 | 1024 | 2m 46s 603ms | 4m 6s 744ms  
6m 53s 741ms | 6 | 9 | 2730 | 2m 47s 586ms | 4m 6s 155ms  
6m 53s 970ms | 9 | 3 | 2730 | 2m 56s 535ms | 3m 57s 435ms  
6m 54s 180ms | 9 | 8 | 2730 | 2m 55s 541ms | 3m 58s 639ms  
6m 55s 154ms | 8 | 9 | 512 | 3m 1s 247ms | 3m 53s 907ms  
6m 57s 652ms | 6 | 8 | 2730 | 2m 51s 586ms | 4m 6s 66ms  
6m 58s 702ms | 6 | 6 | 2730 | 2m 53s 396ms | 4m 5s 306ms  
7m 1s 749ms | 6 | 3 | 2048 | 3m 3s 247ms | 3m 58s 502ms  
7m 1s 971ms | 6 | 8 | 512 | 3m 7s 431ms | 3m 54s 540ms  
7m 2s 856ms | 9 | 3 | 512 | 2m 55s 558ms | 4m 7s 298ms  
7m 3s 641ms | 12 | 8 | 512 | 3m 14s 90ms | 3m 49s 551ms  
7m 3s 977ms | 6 | 3 | 1024 | 2m 48s 788ms | 4m 15s 189ms  
7m 5s 996ms | 8 | 8 | 2730 | 2m 55s 587ms | 4m 10s 409ms  
7m 7s 440ms | 12 | 3 | 2048 | 2m 59s 621ms | 4m 7s 819ms  
7m 10s 900ms | 6 | 3 | 512 | 3m 4s 874ms | 4m 6s 26ms  
7m 11s 106ms | 12 | 3 | 512 | 2m 59s 295ms | 4m 11s 811ms  
7m 12s 61ms | 12 | 6 | 2730 | 3m 6s 330ms | 4m 5s 731ms  
7m 12s 80ms | 6 | 3 | 2730 | 2m 55s 616ms | 4m 16s 464ms  
7m 16s 742ms | 8 | 3 | 2730 | 3m 3s 766ms | 4m 12s 976ms  
7m 18s 21ms | 9 | 9 | 2730 | 3m 8s 271ms | 4m 9s 750ms  
7m 18s 410ms | 12 | 3 | 1024 | 3m 2s 633ms | 4m 15s 777ms  
7m 25s 150ms | 8 | 9 | 2730 | 3m 17s 501ms | 4m 7s 649ms  
7m 26s 912ms | 12 | 3 | 2730 | 3m 6s 771ms | 4m 20s 141ms  
