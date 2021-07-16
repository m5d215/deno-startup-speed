# deno-startup-speed

Deno でコマンドラインツールを作成したいので、C で作成したバイナリと起動速度の比較を行う。

```sh
git clone https://github.com/m5d215/deno-startup-speed.git
cd deno-startup-speed
make
```

結果

```text
Benchmark #1: ./bin/deno
  Time (mean ± σ):      29.9 ms ±   0.6 ms    [User: 16.3 ms, System: 6.3 ms]
  Range (min … max):    29.1 ms …  32.6 ms    93 runs
 
Benchmark #2: ./bin/c
  Time (mean ± σ):       2.1 ms ±   0.4 ms    [User: 0.6 ms, System: 0.5 ms]
  Range (min … max):     1.2 ms …   4.5 ms    544 runs
 
  Warning: Command took less than 5 ms to complete. Results might be inaccurate.
 
Summary
  './bin/c' ran
   14.08 ± 2.52 times faster than './bin/deno'
```
