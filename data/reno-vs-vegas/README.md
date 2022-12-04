# Simultaneous TCP Reno and TCP Vegas Flows

> Legend:
>
> -   Romeo = Sender
> -   Juliet = Receiver

## TCP Reno

> Ports:
>
> -   Sender
>     -   Control: 55558 (Vegas)
>     -   Flow: 55560 (Reno)
> -   Receiver: 5301

### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  6.86 MBytes   959 Kbits/sec   73             sender
[  4]   0.00-60.00  sec  6.55 MBytes   916 Kbits/sec                  receiver
```

### Juliet's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-60.57  sec  0.00 Bytes  0.00 bits/sec                  sender
[  5]   0.00-60.57  sec  6.55 MBytes   907 Kbits/sec                  receiver
```

## TCP Vegas

> Ports:
>
> -   Sender
>     -   Control: 43206 (Vegas)
>     -   Flow: 43204 (Vegas)
> -   Receiver: 5201

### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec   918 KBytes   125 Kbits/sec    2             sender
[  4]   0.00-60.00  sec   810 KBytes   111 Kbits/sec                  receiver
```

### Juliet's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-60.55  sec  0.00 Bytes  0.00 bits/sec                  sender
[  5]   0.00-60.55  sec   810 KBytes   110 Kbits/sec                  receiver
```
