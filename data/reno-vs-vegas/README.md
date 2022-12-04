# Simultaneous TCP Reno and TCP Vegas Flows

> Legend:
>
> -   Romeo = Sender
> -   Juliet = Receiver

## TCP Reno

> Ports:
>
> -   Sender
>     -   Control: 55680 (Vegas)
>     -   Flow: 55682 (Reno)
> -   Receiver: 5301

### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec  6.84 MBytes   957 Kbits/sec   71             sender
[  4]   0.00-60.00  sec  6.54 MBytes   914 Kbits/sec                  receiver
```

### Juliet's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-60.59  sec  0.00 Bytes  0.00 bits/sec                  sender
[  5]   0.00-60.59  sec  6.54 MBytes   905 Kbits/sec                  receiver
```

## TCP Vegas

> Ports:
>
> -   Sender
>     -   Control: 43326 (Vegas)
>     -   Flow: 43328 (Vegas)
> -   Receiver: 5201

### Romeo's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth       Retr
[  4]   0.00-60.00  sec   889 KBytes   121 Kbits/sec    2             sender
[  4]   0.00-60.00  sec   785 KBytes   107 Kbits/sec                  receiver
```

### Juliet's `iperf3` Output

```shell
[ ID] Interval           Transfer     Bandwidth
[  5]   0.00-60.59  sec  0.00 Bytes  0.00 bits/sec                  sender
[  5]   0.00-60.59  sec   785 KBytes   106 Kbits/sec                  receiver
```
