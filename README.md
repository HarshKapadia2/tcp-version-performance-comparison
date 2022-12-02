# Performance Comparison of various TCP versions

> Harsh Gaurang Kapadia
>
> harshk@bu.edu

Comparing the performance of TCP Tahoe, TCP Reno, TCP CUBIC, TCP Vegas and TCP BBR.

[TCP Congestion Control practical/blog](https://witestlab.poly.edu/blog/tcp-congestion-control-basics)

[Data](data)

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

<!-- ### Simultaneous Throughput

-   Reno vs CUBIC
    -   CUBIC eats up Reno
-   Reno vs Vegas
    -   Reno eats up Vegas
-   Reno vs BBR
    -   No idea
-   CUBIC vs Vegas
    -   CUBIC eats up Vegas
-   CUBIC vs BBR
    -   No idea
-   Vegas vs BBR
    -   No idea

### RTT -->

## To Do

-   Decide the ideas to be implemented.
-   Check if any hypothesis can be formed.
-   Run the experiments.
-   Parse RTT and Throughput from the SS output.
-   Create the graphs.
-   Evaluate the terminal output and the graphs.
-   Write the report.
