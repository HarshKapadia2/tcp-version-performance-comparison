# TCP Vegas Performance Comparison

> Legend:
>
> -	Romeo = Sender
> -	Juliet = Receiver

## TCP Reno

### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  7.14 MBytes   998 Kbits/sec   76             sender
[  4]   0.00-60.00  sec  6.90 MBytes   965 Kbits/sec                  receiver
```

### Romeo's `ping` Output

```shell
--- juliet-link-1 ping statistics ---
50 packets transmitted, 50 received, 0% packet loss, time 49004ms
rtt min/avg/max/mdev = 425.256/660.368/842.689/127.408 ms
```

### Juliet's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-60.59  sec  0.00 Bytes  0.00 bits/sec                  sender
[  5]   0.00-60.59  sec  6.90 MBytes   955 Kbits/sec                  receiver
```

## TCP Vegas

### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  6.95 MBytes   971 Kbits/sec    0             sender
[  4]   0.00-60.00  sec  6.85 MBytes   957 Kbits/sec                  receiver
```

### Romeo's `ping` Output

```shell
--- juliet-link-1 ping statistics ---
50 packets transmitted, 50 received, 0% packet loss, time 49075ms
rtt min/avg/max/mdev = 41.007/64.500/83.187/10.312 ms
```

### Juliet's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-60.10  sec  0.00 Bytes  0.00 bits/sec                  sender
[  5]   0.00-60.10  sec  6.85 MBytes   955 Kbits/sec                  receiver
```

## Simultaneous TCP Reno and TCP Vegas Flows

### TCP Reno

#### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  6.88 MBytes   962 Kbits/sec   72             sender
[  4]   0.00-60.00  sec  6.58 MBytes   920 Kbits/sec                  receiver
```

#### Juliet's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-60.56  sec  0.00 Bytes  0.00 bits/sec                  sender
[  5]   0.00-60.56  sec  6.58 MBytes   912 Kbits/sec                  receiver
```

### TCP Vegas

#### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  1008 KBytes   138 Kbits/sec    2             sender
[  4]   0.00-60.00  sec   902 KBytes   123 Kbits/sec                  receiver
```

#### Juliet's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-60.52  sec  0.00 Bytes  0.00 bits/sec                  sender
[  5]   0.00-60.52  sec   902 KBytes   122 Kbits/sec                  receiver
```

