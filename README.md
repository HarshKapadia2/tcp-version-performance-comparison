# Performance Comparison of TCP Versions

Comparing the performance of TCP Reno, TCP CUBIC, TCP Vegas and TCP BBR.

[TCP Congestion Control practical/blog](https://witestlab.poly.edu/blog/tcp-congestion-control-basics)

[Experimental findings](data)

[Learn about TCP](https://networking.harshkapadia.me/tcp)

## Ideas

-   Change the delay on both ends and check the effect that has on the Throughput, for each version.
    -   This will show how different versions respond to added delay, because some versions are loss-based, while some are delay-based.
-   Make the network lossy (different percentages) and check the Throughput and RTT for each version.
-   Run workflows in combos of two and check Throughput.
-   Vary the buffer capacity (speed/rate) and check the Throughput and RTT for every TCP version.
    -   Just like the Reno and Vegas experiment in the blog above.
-   Vary the buffer size (amount of bytes held in the buffer) and check the Throughput and RTT for every TCP version.
    -   Just like the Reno and Vegas experiment in the blog above.
