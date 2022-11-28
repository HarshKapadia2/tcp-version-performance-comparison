# TCP Vegas Performance Comparison

> Legend:
>
> - Romeo = Sender
> - Juliet = Receiver

## TCP Reno

### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  7.22 MBytes  1.01 Mbits/sec   78             sender
[  4]   0.00-60.00  sec  6.90 MBytes   965 Kbits/sec                  receiver
```

### Romeo's `ping` Output

```shell
--- juliet-link-1 ping statistics ---
50 packets transmitted, 50 received, 0% packet loss, time 49019ms
rtt min/avg/max/mdev = 415.963/661.062/844.779/128.272 ms
```

## TCP Vegas

### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  6.93 MBytes   969 Kbits/sec    0             sender
[  4]   0.00-60.00  sec  6.85 MBytes   957 Kbits/sec                  receiver
```

### Romeo's `ping` Output

```shell
--- juliet-link-1 ping statistics ---
50 packets transmitted, 50 received, 0% packet loss, time 49077ms
rtt min/avg/max/mdev = 48.709/65.423/84.616/9.746 ms
```

## Simultaneous TCP Reno and TCP Vegas Flows

### TCP Reno

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  6.31 MBytes   882 Kbits/sec   72             sender
[  4]   0.00-60.00  sec  6.00 MBytes   839 Kbits/sec                  receiver
```

### TCP Vegas

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  1.40 MBytes   195 Kbits/sec    1             sender
[  4]   0.00-60.00  sec  1.30 MBytes   182 Kbits/sec                  receiver
```

