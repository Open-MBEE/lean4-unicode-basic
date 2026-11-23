/- THIS IS A GENERATED FILE - DO NOT EDIT -/
module

/-!
  The table of `UnicodeCLib/prop.c` as comparisons that the kernel can evaluate. The compiled
  lookup is the C function `unicode_prop_lookup`; this is its definition (internal use only).
-/

namespace Unicode.PropTable

/-- Value of a code point in a table row with the given last code point and data -/
@[expose]
public def leaf (c cmax data : Nat) : Nat :=
  if c ≤ cmax then
    let gc := data &&& 0x3fffffff
    let pb := (data >>> 31) &&& 1
    let op := data &&& 0xffffffff00000000
    if gc = 0x00000007 then
      if c &&& 1 = pb then op ||| 0x00000001 else op ||| 0x00000002
    else if gc = 0x00006000 then
      if c &&& 1 = pb then op ||| 0x00002000 else op ||| 0x00004000
    else if gc = 0x00018000 then
      if c &&& 1 = pb then op ||| 0x00008000 else op ||| 0x00010000
    else op ||| gc
  else 0x20000000

@[expose]
public def chunk0 (c : Nat) : Nat :=
  if c < 167 then
    if c < 91 then
      if c < 44 then
        if c < 37 then
          if c < 33 then
            if c < 32 then
              leaf c 31 33554432
            else
              leaf c 32 4194304
          else
            if c < 36 then
              leaf c 35 131072
            else
              leaf c 36 524288
        else
          if c < 42 then
            if c < 40 then
              leaf c 39 131072
            else
              leaf c 41 24576
          else
            if c < 43 then
              leaf c 42 131072
            else
              leaf c 43 262144
      else
        if c < 58 then
          if c < 46 then
            if c < 45 then
              leaf c 44 131072
            else
              leaf c 45 4096
          else
            if c < 48 then
              leaf c 47 131072
            else
              leaf c 57 256
        else
          if c < 63 then
            if c < 60 then
              leaf c 59 131072
            else
              leaf c 62 262144
          else
            if c < 65 then
              leaf c 64 131072
            else
              leaf c 90 1
    else
      if c < 124 then
        if c < 95 then
          if c < 93 then
            if c < 92 then
              leaf c 91 8192
            else
              leaf c 92 131072
          else
            if c < 94 then
              leaf c 93 16384
            else
              leaf c 94 34360786944
        else
          if c < 97 then
            if c < 96 then
              leaf c 95 2048
            else
              leaf c 96 1048576
          else
            if c < 123 then
              leaf c 122 2
            else
              leaf c 123 8192
      else
        if c < 160 then
          if c < 126 then
            if c < 125 then
              leaf c 124 262144
            else
              leaf c 125 16384
          else
            if c < 127 then
              leaf c 126 262144
            else
              leaf c 159 33554432
        else
          if c < 162 then
            if c < 161 then
              leaf c 160 4194304
            else
              leaf c 161 131072
          else
            if c < 166 then
              leaf c 165 524288
            else
              leaf c 166 2097152
  else
    if c < 185 then
      if c < 175 then
        if c < 171 then
          if c < 169 then
            if c < 168 then
              leaf c 167 131072
            else
              leaf c 168 1048576
          else
            if c < 170 then
              leaf c 169 2097152
            else
              leaf c 170 8589934608
        else
          if c < 173 then
            if c < 172 then
              leaf c 171 32768
            else
              leaf c 172 262144
          else
            if c < 174 then
              leaf c 173 67108864
            else
              leaf c 174 2097152
      else
        if c < 180 then
          if c < 177 then
            if c < 176 then
              leaf c 175 1048576
            else
              leaf c 176 2097152
          else
            if c < 178 then
              leaf c 177 262144
            else
              leaf c 179 1024
        else
          if c < 182 then
            if c < 181 then
              leaf c 180 1048576
            else
              leaf c 181 2
          else
            if c < 184 then
              leaf c 183 131072
            else
              leaf c 184 1048576
    else
      if c < 223 then
        if c < 191 then
          if c < 187 then
            if c < 186 then
              leaf c 185 1024
            else
              leaf c 186 8589934608
          else
            if c < 188 then
              leaf c 187 65536
            else
              leaf c 190 1024
        else
          if c < 215 then
            if c < 192 then
              leaf c 191 131072
            else
              leaf c 214 1
          else
            if c < 216 then
              leaf c 215 262144
            else
              leaf c 222 1
      else
        if c < 312 then
          if c < 248 then
            if c < 247 then
              leaf c 246 2
            else
              leaf c 247 262144
          else
            if c < 256 then
              leaf c 255 2
            else
              leaf c 311 7
        else
          if c < 377 then
            if c < 329 then
              leaf c 328 2147483655
            else
              leaf c 376 7
          else
            if c < 383 then
              leaf c 382 2147483655
            else
              leaf c 384 2

@[expose]
public def chunk1 (c : Nat) : Nat :=
  if c < 496 then
    if c < 434 then
      if c < 407 then
        if c < 396 then
          if c < 391 then
            if c < 387 then
              leaf c 386 1
            else
              leaf c 390 7
          else
            if c < 394 then
              leaf c 393 2147483655
            else
              leaf c 395 1
        else
          if c < 402 then
            if c < 398 then
              leaf c 397 2
            else
              leaf c 401 1
          else
            if c < 404 then
              leaf c 403 2147483655
            else
              leaf c 406 7
      else
        if c < 416 then
          if c < 412 then
            if c < 409 then
              leaf c 408 1
            else
              leaf c 411 2
          else
            if c < 414 then
              leaf c 413 1
            else
              leaf c 415 2147483655
        else
          if c < 427 then
            if c < 423 then
              leaf c 422 7
            else
              leaf c 426 2147483655
          else
            if c < 431 then
              leaf c 430 7
            else
              leaf c 433 2147483655
    else
      if c < 452 then
        if c < 443 then
          if c < 440 then
            if c < 436 then
              leaf c 435 1
            else
              leaf c 439 2147483655
          else
            if c < 442 then
              leaf c 441 7
            else
              leaf c 442 2
        else
          if c < 446 then
            if c < 444 then
              leaf c 443 16
            else
              leaf c 445 7
          else
            if c < 448 then
              leaf c 447 2
            else
              leaf c 451 16
      else
        if c < 457 then
          if c < 454 then
            if c < 453 then
              leaf c 452 1
            else
              leaf c 453 4
          else
            if c < 456 then
              leaf c 455 2147483655
            else
              leaf c 456 4
        else
          if c < 460 then
            if c < 459 then
              leaf c 458 7
            else
              leaf c 459 4
          else
            if c < 477 then
              leaf c 476 2147483655
            else
              leaf c 495 7
  else
    if c < 697 then
      if c < 574 then
        if c < 505 then
          if c < 499 then
            if c < 498 then
              leaf c 497 2147483655
            else
              leaf c 498 4
          else
            if c < 503 then
              leaf c 502 7
            else
              leaf c 504 1
        else
          if c < 570 then
            if c < 564 then
              leaf c 563 7
            else
              leaf c 569 2
          else
            if c < 572 then
              leaf c 571 1
            else
              leaf c 573 2147483655
      else
        if c < 592 then
          if c < 580 then
            if c < 576 then
              leaf c 575 7
            else
              leaf c 579 2147483655
          else
            if c < 583 then
              leaf c 582 1
            else
              leaf c 591 7
        else
          if c < 662 then
            if c < 660 then
              leaf c 659 2
            else
              leaf c 661 16
          else
            if c < 688 then
              leaf c 687 2
            else
              leaf c 696 8589934600
    else
      if c < 749 then
        if c < 722 then
          if c < 706 then
            if c < 704 then
              leaf c 703 8
            else
              leaf c 705 8589934600
          else
            if c < 710 then
              leaf c 709 1048576
            else
              leaf c 721 8
        else
          if c < 741 then
            if c < 736 then
              leaf c 735 1048576
            else
              leaf c 740 8589934600
          else
            if c < 748 then
              leaf c 747 1048576
            else
              leaf c 748 8
      else
        if c < 837 then
          if c < 751 then
            if c < 750 then
              leaf c 749 1048576
            else
              leaf c 750 8
          else
            if c < 768 then
              leaf c 767 1048576
            else
              leaf c 836 32
        else
          if c < 867 then
            if c < 838 then
              leaf c 837 25769803808
            else
              leaf c 866 32
          else
            if c < 880 then
              leaf c 879 17179869216
            else
              leaf c 883 7

@[expose]
public def chunk2 (c : Nat) : Nat :=
  if c < 1072 then
    if c < 940 then
      if c < 902 then
        if c < 891 then
          if c < 886 then
            if c < 885 then
              leaf c 884 8
            else
              leaf c 885 1048576
          else
            if c < 890 then
              leaf c 887 7
            else
              leaf c 890 8589934600
        else
          if c < 895 then
            if c < 894 then
              leaf c 893 2
            else
              leaf c 894 131072
          else
            if c < 900 then
              leaf c 895 1
            else
              leaf c 901 1048576
      else
        if c < 910 then
          if c < 904 then
            if c < 903 then
              leaf c 902 1
            else
              leaf c 903 131072
          else
            if c < 908 then
              leaf c 906 1
            else
              leaf c 908 1
        else
          if c < 914 then
            if c < 912 then
              leaf c 911 1
            else
              leaf c 913 2147483655
          else
            if c < 931 then
              leaf c 929 1
            else
              leaf c 939 1
    else
      if c < 1008 then
        if c < 979 then
          if c < 976 then
            if c < 975 then
              leaf c 974 2
            else
              leaf c 975 1
          else
            if c < 978 then
              leaf c 977 34359738370
            else
              leaf c 978 34359738369
        else
          if c < 982 then
            if c < 981 then
              leaf c 980 1
            else
              leaf c 981 34359738370
          else
            if c < 984 then
              leaf c 983 2
            else
              leaf c 1007 7
      else
        if c < 1015 then
          if c < 1012 then
            if c < 1010 then
              leaf c 1009 34359738370
            else
              leaf c 1011 2
          else
            if c < 1014 then
              leaf c 1013 34359738375
            else
              leaf c 1014 262144
        else
          if c < 1020 then
            if c < 1018 then
              leaf c 1017 2147483655
            else
              leaf c 1019 7
          else
            if c < 1022 then
              leaf c 1021 2147483655
            else
              leaf c 1071 1
  else
    if c < 1421 then
      if c < 1329 then
        if c < 1160 then
          if c < 1154 then
            if c < 1120 then
              leaf c 1119 2
            else
              leaf c 1153 7
          else
            if c < 1155 then
              leaf c 1154 2097152
            else
              leaf c 1159 32
        else
          if c < 1217 then
            if c < 1162 then
              leaf c 1161 128
            else
              leaf c 1216 7
          else
            if c < 1231 then
              leaf c 1230 2147483655
            else
              leaf c 1327 7
      else
        if c < 1376 then
          if c < 1369 then
            if c < 1368 then
              leaf c 1366 1
            else
              leaf c 1368 8589934600
          else
            if c < 1370 then
              leaf c 1369 8
            else
              leaf c 1375 131072
        else
          if c < 1418 then
            if c < 1417 then
              leaf c 1416 2
            else
              leaf c 1417 131072
          else
            if c < 1419 then
              leaf c 1418 4096
            else
              leaf c 1420 8589934600
    else
      if c < 1475 then
        if c < 1470 then
          if c < 1425 then
            if c < 1423 then
              leaf c 1422 2097152
            else
              leaf c 1423 524288
          else
            if c < 1456 then
              leaf c 1455 32
            else
              leaf c 1469 17179869216
        else
          if c < 1472 then
            if c < 1471 then
              leaf c 1470 4096
            else
              leaf c 1471 17179869216
          else
            if c < 1473 then
              leaf c 1472 131072
            else
              leaf c 1474 17179869216
      else
        if c < 1488 then
          if c < 1478 then
            if c < 1476 then
              leaf c 1475 131072
            else
              leaf c 1477 17179869216
          else
            if c < 1479 then
              leaf c 1478 131072
            else
              leaf c 1481 17179869216
        else
          if c < 1523 then
            if c < 1519 then
              leaf c 1514 16
            else
              leaf c 1522 16
          else
            if c < 1536 then
              leaf c 1524 131072
            else
              leaf c 1541 67108864

@[expose]
public def chunk3 (c : Nat) : Nat :=
  if c < 1774 then
    if c < 1642 then
      if c < 1565 then
        if c < 1550 then
          if c < 1547 then
            if c < 1545 then
              leaf c 1544 262144
            else
              leaf c 1546 131072
          else
            if c < 1548 then
              leaf c 1547 524288
            else
              leaf c 1549 131072
        else
          if c < 1563 then
            if c < 1552 then
              leaf c 1551 2097152
            else
              leaf c 1562 17179869216
          else
            if c < 1564 then
              leaf c 1563 131072
            else
              leaf c 1564 67108864
      else
        if c < 1611 then
          if c < 1600 then
            if c < 1568 then
              leaf c 1567 131072
            else
              leaf c 1599 16
          else
            if c < 1601 then
              leaf c 1600 8
            else
              leaf c 1610 16
        else
          if c < 1625 then
            if c < 1624 then
              leaf c 1623 17179869216
            else
              leaf c 1624 32
          else
            if c < 1632 then
              leaf c 1631 17179869216
            else
              leaf c 1641 256
    else
      if c < 1758 then
        if c < 1748 then
          if c < 1648 then
            if c < 1646 then
              leaf c 1645 131072
            else
              leaf c 1647 16
          else
            if c < 1649 then
              leaf c 1648 17179869216
            else
              leaf c 1747 16
        else
          if c < 1750 then
            if c < 1749 then
              leaf c 1748 131072
            else
              leaf c 1749 16
          else
            if c < 1757 then
              leaf c 1756 17179869216
            else
              leaf c 1757 67108864
      else
        if c < 1767 then
          if c < 1761 then
            if c < 1759 then
              leaf c 1758 2097152
            else
              leaf c 1760 32
          else
            if c < 1765 then
              leaf c 1764 17179869216
            else
              leaf c 1766 8
        else
          if c < 1770 then
            if c < 1769 then
              leaf c 1768 17179869216
            else
              leaf c 1769 2097152
          else
            if c < 1773 then
              leaf c 1772 32
            else
              leaf c 1773 17179869216
  else
    if c < 1994 then
      if c < 1809 then
        if c < 1791 then
          if c < 1786 then
            if c < 1776 then
              leaf c 1775 16
            else
              leaf c 1785 256
          else
            if c < 1789 then
              leaf c 1788 16
            else
              leaf c 1790 2097152
        else
          if c < 1807 then
            if c < 1792 then
              leaf c 1791 16
            else
              leaf c 1805 131072
          else
            if c < 1808 then
              leaf c 1807 67108864
            else
              leaf c 1808 16
      else
        if c < 1869 then
          if c < 1840 then
            if c < 1810 then
              leaf c 1809 17179869216
            else
              leaf c 1839 16
          else
            if c < 1856 then
              leaf c 1855 17179869216
            else
              leaf c 1866 32
        else
          if c < 1969 then
            if c < 1958 then
              leaf c 1957 16
            else
              leaf c 1968 17179869216
          else
            if c < 1984 then
              leaf c 1969 16
            else
              leaf c 1993 256
    else
      if c < 2048 then
        if c < 2039 then
          if c < 2036 then
            if c < 2027 then
              leaf c 2026 16
            else
              leaf c 2035 32
          else
            if c < 2038 then
              leaf c 2037 8
            else
              leaf c 2038 2097152
        else
          if c < 2045 then
            if c < 2042 then
              leaf c 2041 131072
            else
              leaf c 2042 8
          else
            if c < 2046 then
              leaf c 2045 32
            else
              leaf c 2047 524288
      else
        if c < 2075 then
          if c < 2072 then
            if c < 2070 then
              leaf c 2069 16
            else
              leaf c 2071 17179869216
          else
            if c < 2074 then
              leaf c 2073 32
            else
              leaf c 2074 8
        else
          if c < 2085 then
            if c < 2084 then
              leaf c 2083 17179869216
            else
              leaf c 2084 8
          else
            if c < 2088 then
              leaf c 2087 17179869216
            else
              leaf c 2088 8

@[expose]
public def chunk4 (c : Nat) : Nat :=
  if c < 2382 then
    if c < 2260 then
      if c < 2184 then
        if c < 2137 then
          if c < 2096 then
            if c < 2093 then
              leaf c 2092 17179869216
            else
              leaf c 2093 32
          else
            if c < 2112 then
              leaf c 2110 131072
            else
              leaf c 2136 16
        else
          if c < 2144 then
            if c < 2142 then
              leaf c 2139 32
            else
              leaf c 2142 131072
          else
            if c < 2160 then
              leaf c 2154 16
            else
              leaf c 2183 16
      else
        if c < 2200 then
          if c < 2192 then
            if c < 2185 then
              leaf c 2184 1048576
            else
              leaf c 2191 16
          else
            if c < 2199 then
              leaf c 2193 67108864
            else
              leaf c 2199 17179869216
        else
          if c < 2249 then
            if c < 2208 then
              leaf c 2207 32
            else
              leaf c 2248 16
          else
            if c < 2250 then
              leaf c 2249 8
            else
              leaf c 2259 32
    else
      if c < 2362 then
        if c < 2282 then
          if c < 2274 then
            if c < 2272 then
              leaf c 2271 17179869216
            else
              leaf c 2273 32
          else
            if c < 2275 then
              leaf c 2274 67108864
            else
              leaf c 2281 17179869216
        else
          if c < 2307 then
            if c < 2288 then
              leaf c 2287 32
            else
              leaf c 2306 17179869216
          else
            if c < 2308 then
              leaf c 2307 17179869248
            else
              leaf c 2361 16
      else
        if c < 2366 then
          if c < 2364 then
            if c < 2363 then
              leaf c 2362 17179869216
            else
              leaf c 2363 17179869248
          else
            if c < 2365 then
              leaf c 2364 32
            else
              leaf c 2365 16
        else
          if c < 2377 then
            if c < 2369 then
              leaf c 2368 17179869248
            else
              leaf c 2376 17179869216
          else
            if c < 2381 then
              leaf c 2380 17179869248
            else
              leaf c 2381 32
  else
    if c < 2474 then
      if c < 2416 then
        if c < 2392 then
          if c < 2385 then
            if c < 2384 then
              leaf c 2383 17179869248
            else
              leaf c 2384 16
          else
            if c < 2389 then
              leaf c 2388 32
            else
              leaf c 2391 17179869216
        else
          if c < 2404 then
            if c < 2402 then
              leaf c 2401 16
            else
              leaf c 2403 17179869216
          else
            if c < 2406 then
              leaf c 2405 131072
            else
              leaf c 2415 256
      else
        if c < 2434 then
          if c < 2418 then
            if c < 2417 then
              leaf c 2416 131072
            else
              leaf c 2417 8
          else
            if c < 2433 then
              leaf c 2432 16
            else
              leaf c 2433 17179869216
        else
          if c < 2447 then
            if c < 2437 then
              leaf c 2435 17179869248
            else
              leaf c 2444 16
          else
            if c < 2451 then
              leaf c 2448 16
            else
              leaf c 2472 16
    else
      if c < 2507 then
        if c < 2493 then
          if c < 2486 then
            if c < 2482 then
              leaf c 2480 16
            else
              leaf c 2482 16
          else
            if c < 2492 then
              leaf c 2489 16
            else
              leaf c 2492 32
        else
          if c < 2497 then
            if c < 2494 then
              leaf c 2493 16
            else
              leaf c 2496 17179869248
          else
            if c < 2503 then
              leaf c 2500 17179869216
            else
              leaf c 2504 17179869248
      else
        if c < 2524 then
          if c < 2510 then
            if c < 2509 then
              leaf c 2508 17179869248
            else
              leaf c 2509 32
          else
            if c < 2519 then
              leaf c 2510 16
            else
              leaf c 2519 17179869248
        else
          if c < 2530 then
            if c < 2527 then
              leaf c 2525 16
            else
              leaf c 2529 16
          else
            if c < 2534 then
              leaf c 2531 17179869216
            else
              leaf c 2543 256

@[expose]
public def chunk5 (c : Nat) : Nat :=
  if c < 2691 then
    if c < 2616 then
      if c < 2561 then
        if c < 2555 then
          if c < 2548 then
            if c < 2546 then
              leaf c 2545 16
            else
              leaf c 2547 524288
          else
            if c < 2554 then
              leaf c 2553 1024
            else
              leaf c 2554 2097152
        else
          if c < 2557 then
            if c < 2556 then
              leaf c 2555 524288
            else
              leaf c 2556 16
          else
            if c < 2558 then
              leaf c 2557 131072
            else
              leaf c 2558 32
      else
        if c < 2579 then
          if c < 2565 then
            if c < 2563 then
              leaf c 2562 17179869216
            else
              leaf c 2563 17179869248
          else
            if c < 2575 then
              leaf c 2570 16
            else
              leaf c 2576 16
        else
          if c < 2610 then
            if c < 2602 then
              leaf c 2600 16
            else
              leaf c 2608 16
          else
            if c < 2613 then
              leaf c 2611 16
            else
              leaf c 2614 16
    else
      if c < 2649 then
        if c < 2631 then
          if c < 2622 then
            if c < 2620 then
              leaf c 2617 16
            else
              leaf c 2620 32
          else
            if c < 2625 then
              leaf c 2624 17179869248
            else
              leaf c 2626 17179869216
        else
          if c < 2637 then
            if c < 2635 then
              leaf c 2632 17179869216
            else
              leaf c 2636 17179869216
          else
            if c < 2641 then
              leaf c 2637 32
            else
              leaf c 2641 17179869216
      else
        if c < 2674 then
          if c < 2662 then
            if c < 2654 then
              leaf c 2652 16
            else
              leaf c 2654 16
          else
            if c < 2672 then
              leaf c 2671 256
            else
              leaf c 2673 17179869216
        else
          if c < 2678 then
            if c < 2677 then
              leaf c 2676 16
            else
              leaf c 2677 17179869216
          else
            if c < 2689 then
              leaf c 2678 131072
            else
              leaf c 2690 17179869216
  else
    if c < 2784 then
      if c < 2749 then
        if c < 2730 then
          if c < 2703 then
            if c < 2693 then
              leaf c 2691 17179869248
            else
              leaf c 2701 16
          else
            if c < 2707 then
              leaf c 2705 16
            else
              leaf c 2728 16
        else
          if c < 2741 then
            if c < 2738 then
              leaf c 2736 16
            else
              leaf c 2739 16
          else
            if c < 2748 then
              leaf c 2745 16
            else
              leaf c 2748 32
      else
        if c < 2761 then
          if c < 2753 then
            if c < 2750 then
              leaf c 2749 16
            else
              leaf c 2752 17179869248
          else
            if c < 2759 then
              leaf c 2757 17179869216
            else
              leaf c 2760 17179869216
        else
          if c < 2765 then
            if c < 2763 then
              leaf c 2761 17179869248
            else
              leaf c 2764 17179869248
          else
            if c < 2768 then
              leaf c 2765 32
            else
              leaf c 2768 16
    else
      if c < 2817 then
        if c < 2801 then
          if c < 2790 then
            if c < 2786 then
              leaf c 2785 16
            else
              leaf c 2787 17179869216
          else
            if c < 2800 then
              leaf c 2799 256
            else
              leaf c 2800 131072
        else
          if c < 2810 then
            if c < 2809 then
              leaf c 2801 524288
            else
              leaf c 2809 16
          else
            if c < 2813 then
              leaf c 2812 17179869216
            else
              leaf c 2815 32
      else
        if c < 2835 then
          if c < 2821 then
            if c < 2818 then
              leaf c 2817 17179869216
            else
              leaf c 2819 17179869248
          else
            if c < 2831 then
              leaf c 2828 16
            else
              leaf c 2832 16
        else
          if c < 2866 then
            if c < 2858 then
              leaf c 2856 16
            else
              leaf c 2864 16
          else
            if c < 2869 then
              leaf c 2867 16
            else
              leaf c 2873 16

@[expose]
public def chunk6 (c : Nat) : Nat :=
  if c < 3009 then
    if c < 2928 then
      if c < 2893 then
        if c < 2880 then
          if c < 2878 then
            if c < 2877 then
              leaf c 2876 32
            else
              leaf c 2877 16
          else
            if c < 2879 then
              leaf c 2878 17179869248
            else
              leaf c 2879 17179869216
        else
          if c < 2887 then
            if c < 2881 then
              leaf c 2880 17179869248
            else
              leaf c 2884 17179869216
          else
            if c < 2891 then
              leaf c 2888 17179869248
            else
              leaf c 2892 17179869248
      else
        if c < 2908 then
          if c < 2902 then
            if c < 2899 then
              leaf c 2893 32
            else
              leaf c 2901 32
          else
            if c < 2903 then
              leaf c 2902 17179869216
            else
              leaf c 2903 17179869248
        else
          if c < 2914 then
            if c < 2911 then
              leaf c 2909 16
            else
              leaf c 2913 16
          else
            if c < 2918 then
              leaf c 2915 17179869216
            else
              leaf c 2927 256
    else
      if c < 2969 then
        if c < 2947 then
          if c < 2930 then
            if c < 2929 then
              leaf c 2928 2097152
            else
              leaf c 2929 16
          else
            if c < 2946 then
              leaf c 2935 1024
            else
              leaf c 2946 17179869216
        else
          if c < 2958 then
            if c < 2949 then
              leaf c 2947 16
            else
              leaf c 2954 16
          else
            if c < 2962 then
              leaf c 2960 16
            else
              leaf c 2965 16
      else
        if c < 2984 then
          if c < 2974 then
            if c < 2972 then
              leaf c 2970 16
            else
              leaf c 2972 16
          else
            if c < 2979 then
              leaf c 2975 16
            else
              leaf c 2980 16
        else
          if c < 3006 then
            if c < 2990 then
              leaf c 2986 16
            else
              leaf c 3001 16
          else
            if c < 3008 then
              leaf c 3007 17179869248
            else
              leaf c 3008 17179869216
  else
    if c < 3090 then
      if c < 3059 then
        if c < 3024 then
          if c < 3018 then
            if c < 3014 then
              leaf c 3010 17179869248
            else
              leaf c 3016 17179869248
          else
            if c < 3021 then
              leaf c 3020 17179869248
            else
              leaf c 3021 32
        else
          if c < 3046 then
            if c < 3031 then
              leaf c 3024 16
            else
              leaf c 3031 17179869248
          else
            if c < 3056 then
              leaf c 3055 256
            else
              leaf c 3058 1024
      else
        if c < 3073 then
          if c < 3066 then
            if c < 3065 then
              leaf c 3064 2097152
            else
              leaf c 3065 524288
          else
            if c < 3072 then
              leaf c 3066 2097152
            else
              leaf c 3072 17179869216
        else
          if c < 3077 then
            if c < 3076 then
              leaf c 3075 17179869248
            else
              leaf c 3076 17179869216
          else
            if c < 3086 then
              leaf c 3084 16
            else
              leaf c 3088 16
    else
      if c < 3149 then
        if c < 3134 then
          if c < 3132 then
            if c < 3114 then
              leaf c 3112 16
            else
              leaf c 3129 16
          else
            if c < 3133 then
              leaf c 3132 32
            else
              leaf c 3133 16
        else
          if c < 3142 then
            if c < 3137 then
              leaf c 3136 17179869216
            else
              leaf c 3140 17179869248
          else
            if c < 3146 then
              leaf c 3144 17179869216
            else
              leaf c 3148 17179869216
      else
        if c < 3168 then
          if c < 3160 then
            if c < 3157 then
              leaf c 3149 32
            else
              leaf c 3158 17179869216
          else
            if c < 3164 then
              leaf c 3162 16
            else
              leaf c 3165 16
        else
          if c < 3174 then
            if c < 3170 then
              leaf c 3169 16
            else
              leaf c 3171 17179869216
          else
            if c < 3191 then
              leaf c 3183 256
            else
              leaf c 3191 131072

@[expose]
public def chunk7 (c : Nat) : Nat :=
  if c < 3346 then
    if c < 3270 then
      if c < 3218 then
        if c < 3202 then
          if c < 3200 then
            if c < 3199 then
              leaf c 3198 1024
            else
              leaf c 3199 2097152
          else
            if c < 3201 then
              leaf c 3200 16
            else
              leaf c 3201 17179869216
        else
          if c < 3205 then
            if c < 3204 then
              leaf c 3203 17179869248
            else
              leaf c 3204 131072
          else
            if c < 3214 then
              leaf c 3212 16
            else
              leaf c 3216 16
      else
        if c < 3261 then
          if c < 3253 then
            if c < 3242 then
              leaf c 3240 16
            else
              leaf c 3251 16
          else
            if c < 3260 then
              leaf c 3257 16
            else
              leaf c 3260 32
        else
          if c < 3263 then
            if c < 3262 then
              leaf c 3261 16
            else
              leaf c 3262 17179869248
          else
            if c < 3264 then
              leaf c 3263 17179869216
            else
              leaf c 3268 17179869248
    else
      if c < 3298 then
        if c < 3277 then
          if c < 3274 then
            if c < 3271 then
              leaf c 3270 17179869216
            else
              leaf c 3272 17179869248
          else
            if c < 3276 then
              leaf c 3275 17179869248
            else
              leaf c 3276 17179869216
        else
          if c < 3292 then
            if c < 3285 then
              leaf c 3277 32
            else
              leaf c 3286 17179869248
          else
            if c < 3296 then
              leaf c 3294 16
            else
              leaf c 3297 16
      else
        if c < 3328 then
          if c < 3313 then
            if c < 3302 then
              leaf c 3299 17179869216
            else
              leaf c 3311 256
          else
            if c < 3315 then
              leaf c 3314 16
            else
              leaf c 3315 17179869248
        else
          if c < 3332 then
            if c < 3330 then
              leaf c 3329 17179869216
            else
              leaf c 3331 17179869248
          else
            if c < 3342 then
              leaf c 3340 16
            else
              leaf c 3344 16
  else
    if c < 3440 then
      if c < 3406 then
        if c < 3393 then
          if c < 3389 then
            if c < 3387 then
              leaf c 3386 16
            else
              leaf c 3388 32
          else
            if c < 3390 then
              leaf c 3389 16
            else
              leaf c 3392 17179869248
        else
          if c < 3402 then
            if c < 3398 then
              leaf c 3396 17179869216
            else
              leaf c 3400 17179869248
          else
            if c < 3405 then
              leaf c 3404 17179869248
            else
              leaf c 3405 32
      else
        if c < 3416 then
          if c < 3412 then
            if c < 3407 then
              leaf c 3406 16
            else
              leaf c 3407 2097152
          else
            if c < 3415 then
              leaf c 3414 16
            else
              leaf c 3415 17179869248
        else
          if c < 3426 then
            if c < 3423 then
              leaf c 3422 1024
            else
              leaf c 3425 16
          else
            if c < 3430 then
              leaf c 3427 17179869216
            else
              leaf c 3439 256
    else
      if c < 3517 then
        if c < 3458 then
          if c < 3450 then
            if c < 3449 then
              leaf c 3448 1024
            else
              leaf c 3449 2097152
          else
            if c < 3457 then
              leaf c 3455 16
            else
              leaf c 3457 17179869216
        else
          if c < 3482 then
            if c < 3461 then
              leaf c 3459 17179869248
            else
              leaf c 3478 16
          else
            if c < 3507 then
              leaf c 3505 16
            else
              leaf c 3515 16
      else
        if c < 3538 then
          if c < 3530 then
            if c < 3520 then
              leaf c 3517 16
            else
              leaf c 3526 16
          else
            if c < 3535 then
              leaf c 3530 32
            else
              leaf c 3537 17179869248
        else
          if c < 3544 then
            if c < 3542 then
              leaf c 3540 17179869216
            else
              leaf c 3542 17179869216
          else
            if c < 3558 then
              leaf c 3551 17179869248
            else
              leaf c 3567 256

@[expose]
public def chunk8 (c : Nat) : Nat :=
  if c < 3792 then
    if c < 3716 then
      if c < 3654 then
        if c < 3634 then
          if c < 3585 then
            if c < 3572 then
              leaf c 3571 17179869248
            else
              leaf c 3572 131072
          else
            if c < 3633 then
              leaf c 3632 16
            else
              leaf c 3633 17179869216
        else
          if c < 3647 then
            if c < 3636 then
              leaf c 3635 16
            else
              leaf c 3642 17179869216
          else
            if c < 3648 then
              leaf c 3647 524288
            else
              leaf c 3653 16
      else
        if c < 3663 then
          if c < 3661 then
            if c < 3655 then
              leaf c 3654 8
            else
              leaf c 3660 32
          else
            if c < 3662 then
              leaf c 3661 17179869216
            else
              leaf c 3662 32
        else
          if c < 3674 then
            if c < 3664 then
              leaf c 3663 131072
            else
              leaf c 3673 256
          else
            if c < 3713 then
              leaf c 3675 131072
            else
              leaf c 3714 16
    else
      if c < 3770 then
        if c < 3751 then
          if c < 3724 then
            if c < 3718 then
              leaf c 3716 16
            else
              leaf c 3722 16
          else
            if c < 3749 then
              leaf c 3747 16
            else
              leaf c 3749 16
        else
          if c < 3762 then
            if c < 3761 then
              leaf c 3760 16
            else
              leaf c 3761 17179869216
          else
            if c < 3764 then
              leaf c 3763 16
            else
              leaf c 3769 17179869216
      else
        if c < 3782 then
          if c < 3773 then
            if c < 3771 then
              leaf c 3770 32
            else
              leaf c 3772 17179869216
          else
            if c < 3776 then
              leaf c 3773 16
            else
              leaf c 3780 16
        else
          if c < 3789 then
            if c < 3784 then
              leaf c 3782 8
            else
              leaf c 3788 32
          else
            if c < 3790 then
              leaf c 3789 17179869216
            else
              leaf c 3790 32
  else
    if c < 3896 then
      if c < 3864 then
        if c < 3844 then
          if c < 3840 then
            if c < 3804 then
              leaf c 3801 256
            else
              leaf c 3807 16
          else
            if c < 3841 then
              leaf c 3840 16
            else
              leaf c 3843 2097152
        else
          if c < 3860 then
            if c < 3859 then
              leaf c 3858 131072
            else
              leaf c 3859 2097152
          else
            if c < 3861 then
              leaf c 3860 131072
            else
              leaf c 3863 2097152
      else
        if c < 3892 then
          if c < 3872 then
            if c < 3866 then
              leaf c 3865 32
            else
              leaf c 3871 2097152
          else
            if c < 3882 then
              leaf c 3881 256
            else
              leaf c 3891 1024
        else
          if c < 3894 then
            if c < 3893 then
              leaf c 3892 2097152
            else
              leaf c 3893 32
          else
            if c < 3895 then
              leaf c 3894 2097152
            else
              leaf c 3895 32
    else
      if c < 3968 then
        if c < 3904 then
          if c < 3898 then
            if c < 3897 then
              leaf c 3896 2097152
            else
              leaf c 3897 32
          else
            if c < 3902 then
              leaf c 3901 24576
            else
              leaf c 3903 64
        else
          if c < 3953 then
            if c < 3913 then
              leaf c 3911 16
            else
              leaf c 3948 16
          else
            if c < 3967 then
              leaf c 3966 17179869216
            else
              leaf c 3967 17179869248
      else
        if c < 3976 then
          if c < 3973 then
            if c < 3972 then
              leaf c 3971 17179869216
            else
              leaf c 3972 32
          else
            if c < 3974 then
              leaf c 3973 131072
            else
              leaf c 3975 32
        else
          if c < 3993 then
            if c < 3981 then
              leaf c 3980 16
            else
              leaf c 3991 17179869216
          else
            if c < 4030 then
              leaf c 4028 17179869216
            else
              leaf c 4037 2097152

@[expose]
public def chunk9 (c : Nat) : Nat :=
  if c < 4227 then
    if c < 4159 then
      if c < 4141 then
        if c < 4053 then
          if c < 4046 then
            if c < 4039 then
              leaf c 4038 32
            else
              leaf c 4044 2097152
          else
            if c < 4048 then
              leaf c 4047 2097152
            else
              leaf c 4052 131072
        else
          if c < 4096 then
            if c < 4057 then
              leaf c 4056 2097152
            else
              leaf c 4058 131072
          else
            if c < 4139 then
              leaf c 4138 16
            else
              leaf c 4140 17179869248
      else
        if c < 4152 then
          if c < 4146 then
            if c < 4145 then
              leaf c 4144 17179869216
            else
              leaf c 4145 17179869248
          else
            if c < 4151 then
              leaf c 4150 17179869216
            else
              leaf c 4151 32
        else
          if c < 4155 then
            if c < 4153 then
              leaf c 4152 17179869248
            else
              leaf c 4154 32
          else
            if c < 4157 then
              leaf c 4156 17179869248
            else
              leaf c 4158 17179869216
    else
      if c < 4193 then
        if c < 4182 then
          if c < 4170 then
            if c < 4160 then
              leaf c 4159 16
            else
              leaf c 4169 256
          else
            if c < 4176 then
              leaf c 4175 131072
            else
              leaf c 4181 16
        else
          if c < 4186 then
            if c < 4184 then
              leaf c 4183 17179869248
            else
              leaf c 4185 17179869216
          else
            if c < 4190 then
              leaf c 4189 16
            else
              leaf c 4192 17179869216
      else
        if c < 4206 then
          if c < 4197 then
            if c < 4194 then
              leaf c 4193 16
            else
              leaf c 4196 17179869248
          else
            if c < 4199 then
              leaf c 4198 16
            else
              leaf c 4205 17179869248
        else
          if c < 4213 then
            if c < 4209 then
              leaf c 4208 16
            else
              leaf c 4212 17179869216
          else
            if c < 4226 then
              leaf c 4225 16
            else
              leaf c 4226 17179869216
  else
    if c < 4349 then
      if c < 4253 then
        if c < 4238 then
          if c < 4231 then
            if c < 4229 then
              leaf c 4228 17179869248
            else
              leaf c 4230 17179869216
          else
            if c < 4237 then
              leaf c 4236 17179869248
            else
              leaf c 4237 17179869216
        else
          if c < 4240 then
            if c < 4239 then
              leaf c 4238 16
            else
              leaf c 4239 17179869248
          else
            if c < 4250 then
              leaf c 4249 256
            else
              leaf c 4252 17179869248
      else
        if c < 4301 then
          if c < 4256 then
            if c < 4254 then
              leaf c 4253 17179869216
            else
              leaf c 4255 2097152
          else
            if c < 4295 then
              leaf c 4293 1
            else
              leaf c 4295 1
        else
          if c < 4347 then
            if c < 4304 then
              leaf c 4301 1
            else
              leaf c 4346 2
          else
            if c < 4348 then
              leaf c 4347 131072
            else
              leaf c 4348 8589934600
    else
      if c < 4752 then
        if c < 4696 then
          if c < 4682 then
            if c < 4352 then
              leaf c 4351 2
            else
              leaf c 4680 16
          else
            if c < 4688 then
              leaf c 4685 16
            else
              leaf c 4694 16
        else
          if c < 4704 then
            if c < 4698 then
              leaf c 4696 16
            else
              leaf c 4701 16
          else
            if c < 4746 then
              leaf c 4744 16
            else
              leaf c 4749 16
      else
        if c < 4802 then
          if c < 4792 then
            if c < 4786 then
              leaf c 4784 16
            else
              leaf c 4789 16
          else
            if c < 4800 then
              leaf c 4798 16
            else
              leaf c 4800 16
        else
          if c < 4824 then
            if c < 4808 then
              leaf c 4805 16
            else
              leaf c 4822 16
          else
            if c < 4882 then
              leaf c 4880 16
            else
              leaf c 4885 16

@[expose]
public def chunk10 (c : Nat) : Nat :=
  if c < 6002 then
    if c < 5792 then
      if c < 5120 then
        if c < 4992 then
          if c < 4960 then
            if c < 4957 then
              leaf c 4954 16
            else
              leaf c 4959 32
          else
            if c < 4969 then
              leaf c 4968 131072
            else
              leaf c 4988 1024
        else
          if c < 5024 then
            if c < 5008 then
              leaf c 5007 16
            else
              leaf c 5017 2097152
          else
            if c < 5112 then
              leaf c 5109 1
            else
              leaf c 5117 2
      else
        if c < 5743 then
          if c < 5741 then
            if c < 5121 then
              leaf c 5120 4096
            else
              leaf c 5740 16
          else
            if c < 5742 then
              leaf c 5741 2097152
            else
              leaf c 5742 131072
        else
          if c < 5761 then
            if c < 5760 then
              leaf c 5759 16
            else
              leaf c 5760 4194304
          else
            if c < 5787 then
              leaf c 5786 16
            else
              leaf c 5788 2147508224
    else
      if c < 5919 then
        if c < 5888 then
          if c < 5870 then
            if c < 5867 then
              leaf c 5866 16
            else
              leaf c 5869 131072
          else
            if c < 5873 then
              leaf c 5872 512
            else
              leaf c 5880 16
        else
          if c < 5908 then
            if c < 5906 then
              leaf c 5905 16
            else
              leaf c 5907 17179869216
          else
            if c < 5909 then
              leaf c 5908 32
            else
              leaf c 5909 64
      else
        if c < 5952 then
          if c < 5940 then
            if c < 5938 then
              leaf c 5937 16
            else
              leaf c 5939 17179869216
          else
            if c < 5941 then
              leaf c 5940 64
            else
              leaf c 5942 131072
        else
          if c < 5984 then
            if c < 5970 then
              leaf c 5969 16
            else
              leaf c 5971 17179869216
          else
            if c < 5998 then
              leaf c 5996 16
            else
              leaf c 6000 16
  else
    if c < 6128 then
      if c < 6089 then
        if c < 6071 then
          if c < 6068 then
            if c < 6016 then
              leaf c 6003 17179869216
            else
              leaf c 6067 16
          else
            if c < 6070 then
              leaf c 6069 32
            else
              leaf c 6070 17179869248
        else
          if c < 6086 then
            if c < 6078 then
              leaf c 6077 17179869216
            else
              leaf c 6085 17179869248
          else
            if c < 6087 then
              leaf c 6086 17179869216
            else
              leaf c 6088 17179869248
      else
        if c < 6107 then
          if c < 6103 then
            if c < 6100 then
              leaf c 6099 32
            else
              leaf c 6102 131072
          else
            if c < 6104 then
              leaf c 6103 8
            else
              leaf c 6106 131072
        else
          if c < 6109 then
            if c < 6108 then
              leaf c 6107 524288
            else
              leaf c 6108 16
          else
            if c < 6112 then
              leaf c 6109 32
            else
              leaf c 6121 256
    else
      if c < 6176 then
        if c < 6155 then
          if c < 6150 then
            if c < 6144 then
              leaf c 6137 1024
            else
              leaf c 6149 131072
          else
            if c < 6151 then
              leaf c 6150 4096
            else
              leaf c 6154 131072
        else
          if c < 6159 then
            if c < 6158 then
              leaf c 6157 32
            else
              leaf c 6158 67108864
          else
            if c < 6160 then
              leaf c 6159 32
            else
              leaf c 6169 256
      else
        if c < 6277 then
          if c < 6212 then
            if c < 6211 then
              leaf c 6210 16
            else
              leaf c 6211 8
          else
            if c < 6272 then
              leaf c 6264 16
            else
              leaf c 6276 16
        else
          if c < 6313 then
            if c < 6279 then
              leaf c 6278 17179869216
            else
              leaf c 6312 16
          else
            if c < 6314 then
              leaf c 6313 17179869216
            else
              leaf c 6314 16

@[expose]
public def chunk11 (c : Nat) : Nat :=
  if c < 6754 then
    if c < 6576 then
      if c < 6451 then
        if c < 6439 then
          if c < 6432 then
            if c < 6400 then
              leaf c 6389 16
            else
              leaf c 6430 16
          else
            if c < 6435 then
              leaf c 6434 17179869216
            else
              leaf c 6438 17179869248
        else
          if c < 6448 then
            if c < 6441 then
              leaf c 6440 17179869216
            else
              leaf c 6443 17179869248
          else
            if c < 6450 then
              leaf c 6449 17179869248
            else
              leaf c 6450 17179869216
      else
        if c < 6470 then
          if c < 6464 then
            if c < 6457 then
              leaf c 6456 17179869248
            else
              leaf c 6459 32
          else
            if c < 6468 then
              leaf c 6464 2097152
            else
              leaf c 6469 131072
        else
          if c < 6512 then
            if c < 6480 then
              leaf c 6479 256
            else
              leaf c 6509 16
          else
            if c < 6528 then
              leaf c 6516 16
            else
              leaf c 6571 16
    else
      if c < 6686 then
        if c < 6656 then
          if c < 6618 then
            if c < 6608 then
              leaf c 6601 16
            else
              leaf c 6617 256
          else
            if c < 6622 then
              leaf c 6618 1024
            else
              leaf c 6655 2097152
        else
          if c < 6681 then
            if c < 6679 then
              leaf c 6678 16
            else
              leaf c 6680 17179869216
          else
            if c < 6683 then
              leaf c 6682 17179869248
            else
              leaf c 6683 17179869216
      else
        if c < 6743 then
          if c < 6741 then
            if c < 6688 then
              leaf c 6687 131072
            else
              leaf c 6740 16
          else
            if c < 6742 then
              leaf c 6741 17179869248
            else
              leaf c 6742 17179869216
        else
          if c < 6752 then
            if c < 6744 then
              leaf c 6743 17179869248
            else
              leaf c 6750 17179869216
          else
            if c < 6753 then
              leaf c 6752 32
            else
              leaf c 6753 17179869248
  else
    if c < 6860 then
      if c < 6800 then
        if c < 6771 then
          if c < 6757 then
            if c < 6755 then
              leaf c 6754 17179869216
            else
              leaf c 6756 17179869248
          else
            if c < 6765 then
              leaf c 6764 17179869216
            else
              leaf c 6770 17179869248
        else
          if c < 6783 then
            if c < 6773 then
              leaf c 6772 17179869216
            else
              leaf c 6780 32
          else
            if c < 6784 then
              leaf c 6783 32
            else
              leaf c 6793 256
      else
        if c < 6832 then
          if c < 6823 then
            if c < 6816 then
              leaf c 6809 256
            else
              leaf c 6822 131072
          else
            if c < 6824 then
              leaf c 6823 8
            else
              leaf c 6829 131072
        else
          if c < 6847 then
            if c < 6846 then
              leaf c 6845 32
            else
              leaf c 6846 128
          else
            if c < 6849 then
              leaf c 6848 17179869216
            else
              leaf c 6859 32
    else
      if c < 6971 then
        if c < 6917 then
          if c < 6912 then
            if c < 6863 then
              leaf c 6862 17179869216
            else
              leaf c 6896 32
          else
            if c < 6916 then
              leaf c 6915 17179869216
            else
              leaf c 6916 17179869248
        else
          if c < 6965 then
            if c < 6964 then
              leaf c 6963 16
            else
              leaf c 6964 32
          else
            if c < 6966 then
              leaf c 6965 17179869248
            else
              leaf c 6970 17179869216
      else
        if c < 6979 then
          if c < 6973 then
            if c < 6972 then
              leaf c 6971 17179869248
            else
              leaf c 6972 17179869216
          else
            if c < 6978 then
              leaf c 6977 17179869248
            else
              leaf c 6978 17179869216
        else
          if c < 6981 then
            if c < 6980 then
              leaf c 6979 17179869248
            else
              leaf c 6980 64
          else
            if c < 6990 then
              leaf c 6988 16
            else
              leaf c 6991 131072

@[expose]
public def chunk12 (c : Nat) : Nat :=
  if c < 7222 then
    if c < 7086 then
      if c < 7043 then
        if c < 7028 then
          if c < 7009 then
            if c < 7002 then
              leaf c 7001 256
            else
              leaf c 7008 131072
          else
            if c < 7019 then
              leaf c 7018 2097152
            else
              leaf c 7027 32
        else
          if c < 7040 then
            if c < 7037 then
              leaf c 7036 2097152
            else
              leaf c 7039 131072
          else
            if c < 7042 then
              leaf c 7041 17179869216
            else
              leaf c 7042 17179869248
      else
        if c < 7080 then
          if c < 7074 then
            if c < 7073 then
              leaf c 7072 16
            else
              leaf c 7073 17179869248
          else
            if c < 7078 then
              leaf c 7077 17179869216
            else
              leaf c 7079 17179869248
        else
          if c < 7083 then
            if c < 7082 then
              leaf c 7081 17179869216
            else
              leaf c 7082 64
          else
            if c < 7084 then
              leaf c 7083 32
            else
              leaf c 7085 17179869216
    else
      if c < 7150 then
        if c < 7143 then
          if c < 7098 then
            if c < 7088 then
              leaf c 7087 16
            else
              leaf c 7097 256
          else
            if c < 7142 then
              leaf c 7141 16
            else
              leaf c 7142 32
        else
          if c < 7146 then
            if c < 7144 then
              leaf c 7143 17179869248
            else
              leaf c 7145 17179869216
          else
            if c < 7149 then
              leaf c 7148 17179869248
            else
              leaf c 7149 17179869216
      else
        if c < 7168 then
          if c < 7154 then
            if c < 7151 then
              leaf c 7150 17179869248
            else
              leaf c 7153 17179869216
          else
            if c < 7164 then
              leaf c 7155 64
            else
              leaf c 7167 131072
        else
          if c < 7212 then
            if c < 7204 then
              leaf c 7203 16
            else
              leaf c 7211 17179869248
          else
            if c < 7220 then
              leaf c 7219 17179869216
            else
              leaf c 7221 17179869248
  else
    if c < 7380 then
      if c < 7294 then
        if c < 7245 then
          if c < 7227 then
            if c < 7223 then
              leaf c 7222 17179869216
            else
              leaf c 7223 32
          else
            if c < 7232 then
              leaf c 7231 131072
            else
              leaf c 7241 256
        else
          if c < 7258 then
            if c < 7248 then
              leaf c 7247 16
            else
              leaf c 7257 256
          else
            if c < 7288 then
              leaf c 7287 16
            else
              leaf c 7293 8
      else
        if c < 7357 then
          if c < 7305 then
            if c < 7296 then
              leaf c 7295 131072
            else
              leaf c 7304 2
          else
            if c < 7312 then
              leaf c 7306 2147483655
            else
              leaf c 7354 1
        else
          if c < 7376 then
            if c < 7360 then
              leaf c 7359 1
            else
              leaf c 7367 131072
          else
            if c < 7379 then
              leaf c 7378 32
            else
              leaf c 7379 131072
    else
      if c < 7415 then
        if c < 7405 then
          if c < 7394 then
            if c < 7393 then
              leaf c 7392 32
            else
              leaf c 7393 64
          else
            if c < 7401 then
              leaf c 7400 32
            else
              leaf c 7404 16
        else
          if c < 7412 then
            if c < 7406 then
              leaf c 7405 32
            else
              leaf c 7411 16
          else
            if c < 7413 then
              leaf c 7412 32
            else
              leaf c 7414 16
      else
        if c < 7468 then
          if c < 7418 then
            if c < 7416 then
              leaf c 7415 64
            else
              leaf c 7417 32
          else
            if c < 7424 then
              leaf c 7418 16
            else
              leaf c 7467 2
        else
          if c < 7544 then
            if c < 7531 then
              leaf c 7530 8589934600
            else
              leaf c 7543 2
          else
            if c < 7545 then
              leaf c 7544 8589934600
            else
              leaf c 7578 2

@[expose]
public def chunk13 (c : Nat) : Nat :=
  if c < 8118 then
    if c < 8008 then
      if c < 7944 then
        if c < 7680 then
          if c < 7635 then
            if c < 7616 then
              leaf c 7615 8589934600
            else
              leaf c 7634 32
          else
            if c < 7669 then
              leaf c 7668 17179869216
            else
              leaf c 7679 32
        else
          if c < 7838 then
            if c < 7830 then
              leaf c 7829 7
            else
              leaf c 7837 2
          else
            if c < 7936 then
              leaf c 7935 7
            else
              leaf c 7943 2
      else
        if c < 7976 then
          if c < 7960 then
            if c < 7952 then
              leaf c 7951 1
            else
              leaf c 7957 2
          else
            if c < 7968 then
              leaf c 7965 1
            else
              leaf c 7975 2
        else
          if c < 7992 then
            if c < 7984 then
              leaf c 7983 1
            else
              leaf c 7991 2
          else
            if c < 8000 then
              leaf c 7999 1
            else
              leaf c 8005 2
    else
      if c < 8048 then
        if c < 8029 then
          if c < 8025 then
            if c < 8016 then
              leaf c 8013 1
            else
              leaf c 8023 2
          else
            if c < 8027 then
              leaf c 8025 1
            else
              leaf c 8027 1
        else
          if c < 8033 then
            if c < 8031 then
              leaf c 8029 1
            else
              leaf c 8032 2147483655
          else
            if c < 8040 then
              leaf c 8039 2
            else
              leaf c 8047 1
      else
        if c < 8088 then
          if c < 8072 then
            if c < 8064 then
              leaf c 8061 2
            else
              leaf c 8071 2
          else
            if c < 8080 then
              leaf c 8079 4
            else
              leaf c 8087 2
        else
          if c < 8104 then
            if c < 8096 then
              leaf c 8095 4
            else
              leaf c 8103 2
          else
            if c < 8112 then
              leaf c 8111 4
            else
              leaf c 8116 2
  else
    if c < 8168 then
      if c < 8136 then
        if c < 8126 then
          if c < 8124 then
            if c < 8120 then
              leaf c 8119 2
            else
              leaf c 8123 1
          else
            if c < 8125 then
              leaf c 8124 4
            else
              leaf c 8125 1048576
        else
          if c < 8130 then
            if c < 8127 then
              leaf c 8126 2
            else
              leaf c 8129 1048576
          else
            if c < 8134 then
              leaf c 8132 2
            else
              leaf c 8135 2
      else
        if c < 8150 then
          if c < 8141 then
            if c < 8140 then
              leaf c 8139 1
            else
              leaf c 8140 4
          else
            if c < 8144 then
              leaf c 8143 1048576
            else
              leaf c 8147 2
        else
          if c < 8157 then
            if c < 8152 then
              leaf c 8151 2
            else
              leaf c 8155 1
          else
            if c < 8160 then
              leaf c 8159 1048576
            else
              leaf c 8167 2
    else
      if c < 8203 then
        if c < 8184 then
          if c < 8178 then
            if c < 8173 then
              leaf c 8172 1
            else
              leaf c 8175 1048576
          else
            if c < 8182 then
              leaf c 8180 2
            else
              leaf c 8183 2
        else
          if c < 8189 then
            if c < 8188 then
              leaf c 8187 1
            else
              leaf c 8188 4
          else
            if c < 8192 then
              leaf c 8190 1048576
            else
              leaf c 8202 4194304
      else
        if c < 8216 then
          if c < 8214 then
            if c < 8208 then
              leaf c 8207 67108864
            else
              leaf c 8213 4096
          else
            if c < 8215 then
              leaf c 8214 34359869440
            else
              leaf c 8215 131072
        else
          if c < 8219 then
            if c < 8218 then
              leaf c 8217 98304
            else
              leaf c 8218 8192
          else
            if c < 8221 then
              leaf c 8220 32768
            else
              leaf c 8221 65536

@[expose]
public def chunk14 (c : Nat) : Nat :=
  if c < 8320 then
    if c < 8261 then
      if c < 8242 then
        if c < 8233 then
          if c < 8224 then
            if c < 8223 then
              leaf c 8222 8192
            else
              leaf c 8223 32768
          else
            if c < 8232 then
              leaf c 8231 131072
            else
              leaf c 8232 8388608
        else
          if c < 8239 then
            if c < 8234 then
              leaf c 8233 16777216
            else
              leaf c 8238 67108864
          else
            if c < 8240 then
              leaf c 8239 4194304
            else
              leaf c 8241 131072
      else
        if c < 8255 then
          if c < 8249 then
            if c < 8245 then
              leaf c 8244 34359869440
            else
              leaf c 8248 131072
          else
            if c < 8251 then
              leaf c 8250 2147581952
            else
              leaf c 8254 131072
        else
          if c < 8257 then
            if c < 8256 then
              leaf c 8255 2048
            else
              leaf c 8256 34359740416
          else
            if c < 8260 then
              leaf c 8259 131072
            else
              leaf c 8260 262144
    else
      if c < 8289 then
        if c < 8276 then
          if c < 8274 then
            if c < 8263 then
              leaf c 8262 2147508224
            else
              leaf c 8273 131072
          else
            if c < 8275 then
              leaf c 8274 262144
            else
              leaf c 8275 131072
        else
          if c < 8287 then
            if c < 8277 then
              leaf c 8276 2048
            else
              leaf c 8286 131072
          else
            if c < 8288 then
              leaf c 8287 4194304
            else
              leaf c 8288 67108864
      else
        if c < 8308 then
          if c < 8304 then
            if c < 8294 then
              leaf c 8292 34426847232
            else
              leaf c 8303 67108864
          else
            if c < 8305 then
              leaf c 8304 1024
            else
              leaf c 8305 8589934600
        else
          if c < 8317 then
            if c < 8314 then
              leaf c 8313 1024
            else
              leaf c 8316 262144
          else
            if c < 8319 then
              leaf c 8318 36507246592
            else
              leaf c 8319 8589934600
  else
    if c < 8451 then
      if c < 8417 then
        if c < 8336 then
          if c < 8333 then
            if c < 8330 then
              leaf c 8329 1024
            else
              leaf c 8332 262144
          else
            if c < 8335 then
              leaf c 8334 36507246592
            else
              leaf c 8335 8
        else
          if c < 8400 then
            if c < 8352 then
              leaf c 8351 8589934600
            else
              leaf c 8388 524288
          else
            if c < 8413 then
              leaf c 8412 34359738400
            else
              leaf c 8416 128
      else
        if c < 8427 then
          if c < 8421 then
            if c < 8418 then
              leaf c 8417 34359738400
            else
              leaf c 8420 128
          else
            if c < 8423 then
              leaf c 8422 34359738400
            else
              leaf c 8426 32
        else
          if c < 8448 then
            if c < 8432 then
              leaf c 8431 34359738400
            else
              leaf c 8432 32
          else
            if c < 8450 then
              leaf c 8449 2097152
            else
              leaf c 8450 34359738369
    else
      if c < 8468 then
        if c < 8460 then
          if c < 8456 then
            if c < 8455 then
              leaf c 8454 2097152
            else
              leaf c 8455 34359738369
          else
            if c < 8458 then
              leaf c 8457 2097152
            else
              leaf c 8459 36507222023
        else
          if c < 8464 then
            if c < 8462 then
              leaf c 8461 34359738369
            else
              leaf c 8463 34359738370
          else
            if c < 8467 then
              leaf c 8466 34359738369
            else
              leaf c 8467 34359738370
      else
        if c < 8473 then
          if c < 8470 then
            if c < 8469 then
              leaf c 8468 2097152
            else
              leaf c 8469 34359738369
          else
            if c < 8472 then
              leaf c 8471 2097152
            else
              leaf c 8472 262144
        else
          if c < 8484 then
            if c < 8478 then
              leaf c 8477 34359738369
            else
              leaf c 8483 2097152
          else
            if c < 8485 then
              leaf c 8484 34359738369
            else
              leaf c 8485 2097152

@[expose]
public def chunk15 (c : Nat) : Nat :=
  if c < 8592 then
    if c < 8512 then
      if c < 8497 then
        if c < 8490 then
          if c < 8488 then
            if c < 8487 then
              leaf c 8486 1
            else
              leaf c 8487 2097152
          else
            if c < 8489 then
              leaf c 8488 34359738369
            else
              leaf c 8489 34361835520
        else
          if c < 8494 then
            if c < 8492 then
              leaf c 8491 1
            else
              leaf c 8493 34359738369
          else
            if c < 8495 then
              leaf c 8494 2097152
            else
              leaf c 8496 34359738375
      else
        if c < 8505 then
          if c < 8499 then
            if c < 8498 then
              leaf c 8497 34359738369
            else
              leaf c 8498 1
          else
            if c < 8501 then
              leaf c 8500 36507222023
            else
              leaf c 8504 34359738384
        else
          if c < 8508 then
            if c < 8506 then
              leaf c 8505 2
            else
              leaf c 8507 2097152
          else
            if c < 8510 then
              leaf c 8509 34359738370
            else
              leaf c 8511 34359738369
    else
      if c < 8528 then
        if c < 8523 then
          if c < 8519 then
            if c < 8517 then
              leaf c 8516 262144
            else
              leaf c 8518 36507222023
          else
            if c < 8522 then
              leaf c 8521 34359738370
            else
              leaf c 8522 2097152
        else
          if c < 8526 then
            if c < 8524 then
              leaf c 8523 262144
            else
              leaf c 8525 2097152
          else
            if c < 8527 then
              leaf c 8526 2
            else
              leaf c 8527 2097152
      else
        if c < 8579 then
          if c < 8560 then
            if c < 8544 then
              leaf c 8543 1024
            else
              leaf c 8559 4294967808
          else
            if c < 8576 then
              leaf c 8575 8589935104
            else
              leaf c 8578 512
        else
          if c < 8585 then
            if c < 8581 then
              leaf c 8580 2147483655
            else
              leaf c 8584 512
          else
            if c < 8586 then
              leaf c 8585 1024
            else
              leaf c 8587 2097152
  else
    if c < 8630 then
      if c < 8614 then
        if c < 8608 then
          if c < 8602 then
            if c < 8597 then
              leaf c 8596 262144
            else
              leaf c 8601 34361835520
          else
            if c < 8604 then
              leaf c 8603 262144
            else
              leaf c 8607 34361835520
        else
          if c < 8611 then
            if c < 8609 then
              leaf c 8608 262144
            else
              leaf c 8610 34361835520
          else
            if c < 8612 then
              leaf c 8611 262144
            else
              leaf c 8613 34361835520
      else
        if c < 8622 then
          if c < 8616 then
            if c < 8615 then
              leaf c 8614 262144
            else
              leaf c 8615 34361835520
          else
            if c < 8617 then
              leaf c 8616 2097152
            else
              leaf c 8621 34361835520
        else
          if c < 8624 then
            if c < 8623 then
              leaf c 8622 262144
            else
              leaf c 8623 2097152
          else
            if c < 8626 then
              leaf c 8625 34361835520
            else
              leaf c 8629 2097152
    else
      if c < 8661 then
        if c < 8656 then
          if c < 8636 then
            if c < 8632 then
              leaf c 8631 34361835520
            else
              leaf c 8635 2097152
          else
            if c < 8654 then
              leaf c 8653 34361835520
            else
              leaf c 8655 262144
        else
          if c < 8659 then
            if c < 8658 then
              leaf c 8657 34361835520
            else
              leaf c 8658 262144
          else
            if c < 8660 then
              leaf c 8659 34361835520
            else
              leaf c 8660 262144
      else
        if c < 8676 then
          if c < 8669 then
            if c < 8668 then
              leaf c 8667 34361835520
            else
              leaf c 8668 2097152
          else
            if c < 8670 then
              leaf c 8669 34361835520
            else
              leaf c 8675 2097152
        else
          if c < 8692 then
            if c < 8678 then
              leaf c 8677 34361835520
            else
              leaf c 8691 2097152
          else
            if c < 8960 then
              leaf c 8959 262144
            else
              leaf c 8967 2097152

@[expose]
public def chunk16 (c : Nat) : Nat :=
  if c < 9666 then
    if c < 9186 then
      if c < 9115 then
        if c < 9001 then
          if c < 8992 then
            if c < 8972 then
              leaf c 8971 34359762944
            else
              leaf c 8991 2097152
          else
            if c < 8994 then
              leaf c 8993 262144
            else
              leaf c 9000 2097152
        else
          if c < 9084 then
            if c < 9003 then
              leaf c 9002 2147508224
            else
              leaf c 9083 2097152
          else
            if c < 9085 then
              leaf c 9084 262144
            else
              leaf c 9114 2097152
      else
        if c < 9144 then
          if c < 9142 then
            if c < 9140 then
              leaf c 9139 262144
            else
              leaf c 9141 34361835520
          else
            if c < 9143 then
              leaf c 9142 2097152
            else
              leaf c 9143 34361835520
        else
          if c < 9169 then
            if c < 9168 then
              leaf c 9167 2097152
            else
              leaf c 9168 34361835520
          else
            if c < 9180 then
              leaf c 9179 2097152
            else
              leaf c 9185 262144
    else
      if c < 9472 then
        if c < 9372 then
          if c < 9280 then
            if c < 9187 then
              leaf c 9186 34361835520
            else
              leaf c 9257 2097152
          else
            if c < 9312 then
              leaf c 9290 2097152
            else
              leaf c 9371 1024
        else
          if c < 9424 then
            if c < 9398 then
              leaf c 9397 2097152
            else
              leaf c 9423 21476933632
          else
            if c < 9450 then
              leaf c 9449 25771900928
            else
              leaf c 9471 1024
      else
        if c < 9655 then
          if c < 9634 then
            if c < 9632 then
              leaf c 9631 2097152
            else
              leaf c 9633 34361835520
          else
            if c < 9646 then
              leaf c 9645 2097152
            else
              leaf c 9654 34361835520
        else
          if c < 9660 then
            if c < 9656 then
              leaf c 9655 262144
            else
              leaf c 9659 2097152
          else
            if c < 9665 then
              leaf c 9664 34361835520
            else
              leaf c 9665 262144
  else
    if c < 9735 then
      if c < 9699 then
        if c < 9676 then
          if c < 9672 then
            if c < 9670 then
              leaf c 9669 2097152
            else
              leaf c 9671 34361835520
          else
            if c < 9674 then
              leaf c 9673 2097152
            else
              leaf c 9675 34361835520
        else
          if c < 9684 then
            if c < 9679 then
              leaf c 9678 2097152
            else
              leaf c 9683 34361835520
          else
            if c < 9698 then
              leaf c 9697 2097152
            else
              leaf c 9698 34361835520
      else
        if c < 9709 then
          if c < 9701 then
            if c < 9700 then
              leaf c 9699 2097152
            else
              leaf c 9700 34361835520
          else
            if c < 9703 then
              leaf c 9702 2097152
            else
              leaf c 9708 34361835520
        else
          if c < 9728 then
            if c < 9720 then
              leaf c 9719 2097152
            else
              leaf c 9727 262144
          else
            if c < 9733 then
              leaf c 9732 2097152
            else
              leaf c 9734 34361835520
    else
      if c < 9839 then
        if c < 9795 then
          if c < 9793 then
            if c < 9792 then
              leaf c 9791 2097152
            else
              leaf c 9792 34361835520
          else
            if c < 9794 then
              leaf c 9793 2097152
            else
              leaf c 9794 34361835520
        else
          if c < 9828 then
            if c < 9824 then
              leaf c 9823 2097152
            else
              leaf c 9827 34361835520
          else
            if c < 9837 then
              leaf c 9836 2097152
            else
              leaf c 9838 34361835520
      else
        if c < 10132 then
          if c < 10088 then
            if c < 9840 then
              leaf c 9839 262144
            else
              leaf c 10087 2097152
          else
            if c < 10102 then
              leaf c 10101 24576
            else
              leaf c 10131 1024
        else
          if c < 10181 then
            if c < 10176 then
              leaf c 10175 2097152
            else
              leaf c 10180 262144
          else
            if c < 10183 then
              leaf c 10182 36507246592
            else
              leaf c 10213 262144

@[expose]
public def chunk17 (c : Nat) : Nat :=
  if c < 11503 then
    if c < 11264 then
      if c < 10748 then
        if c < 10627 then
          if c < 10240 then
            if c < 10224 then
              leaf c 10223 34359762944
            else
              leaf c 10239 262144
          else
            if c < 10496 then
              leaf c 10495 2097152
            else
              leaf c 10626 262144
        else
          if c < 10712 then
            if c < 10649 then
              leaf c 10648 36507246592
            else
              leaf c 10711 262144
          else
            if c < 10716 then
              leaf c 10715 34359762944
            else
              leaf c 10747 262144
      else
        if c < 11077 then
          if c < 11008 then
            if c < 10750 then
              leaf c 10749 34359762944
            else
              leaf c 11007 262144
          else
            if c < 11056 then
              leaf c 11055 2097152
            else
              leaf c 11076 262144
        else
          if c < 11085 then
            if c < 11079 then
              leaf c 11078 2097152
            else
              leaf c 11084 262144
          else
            if c < 11126 then
              leaf c 11123 2097152
            else
              leaf c 11263 2097152
    else
      if c < 11380 then
        if c < 11365 then
          if c < 11360 then
            if c < 11312 then
              leaf c 11311 1
            else
              leaf c 11359 2
          else
            if c < 11363 then
              leaf c 11362 7
            else
              leaf c 11364 1
        else
          if c < 11374 then
            if c < 11367 then
              leaf c 11366 2
            else
              leaf c 11373 2147483655
          else
            if c < 11377 then
              leaf c 11376 1
            else
              leaf c 11379 7
      else
        if c < 11393 then
          if c < 11388 then
            if c < 11383 then
              leaf c 11382 2147483655
            else
              leaf c 11387 2
          else
            if c < 11390 then
              leaf c 11389 8589934600
            else
              leaf c 11392 1
        else
          if c < 11493 then
            if c < 11492 then
              leaf c 11491 7
            else
              leaf c 11492 2
          else
            if c < 11499 then
              leaf c 11498 2097152
            else
              leaf c 11502 2147483655
  else
    if c < 11704 then
      if c < 11568 then
        if c < 11518 then
          if c < 11513 then
            if c < 11506 then
              leaf c 11505 32
            else
              leaf c 11507 7
          else
            if c < 11517 then
              leaf c 11516 131072
            else
              leaf c 11517 1024
        else
          if c < 11559 then
            if c < 11520 then
              leaf c 11519 131072
            else
              leaf c 11557 2
          else
            if c < 11565 then
              leaf c 11559 2
            else
              leaf c 11565 2
      else
        if c < 11648 then
          if c < 11632 then
            if c < 11631 then
              leaf c 11623 16
            else
              leaf c 11631 8
          else
            if c < 11647 then
              leaf c 11632 131072
            else
              leaf c 11647 32
        else
          if c < 11688 then
            if c < 11680 then
              leaf c 11670 16
            else
              leaf c 11686 16
          else
            if c < 11696 then
              leaf c 11694 16
            else
              leaf c 11702 16
    else
      if c < 11782 then
        if c < 11736 then
          if c < 11720 then
            if c < 11712 then
              leaf c 11710 16
            else
              leaf c 11718 16
          else
            if c < 11728 then
              leaf c 11726 16
            else
              leaf c 11734 16
        else
          if c < 11776 then
            if c < 11744 then
              leaf c 11742 16
            else
              leaf c 11775 17179869216
          else
            if c < 11778 then
              leaf c 11777 131072
            else
              leaf c 11781 98304
      else
        if c < 11790 then
          if c < 11787 then
            if c < 11785 then
              leaf c 11784 131072
            else
              leaf c 11786 2147581952
          else
            if c < 11788 then
              leaf c 11787 131072
            else
              leaf c 11789 98304
        else
          if c < 11800 then
            if c < 11799 then
              leaf c 11798 131072
            else
              leaf c 11799 4096
          else
            if c < 11802 then
              leaf c 11801 131072
            else
              leaf c 11802 4096

@[expose]
public def chunk18 (c : Nat) : Nat :=
  if c < 12308 then
    if c < 11861 then
      if c < 11834 then
        if c < 11810 then
          if c < 11806 then
            if c < 11804 then
              leaf c 11803 131072
            else
              leaf c 11805 98304
          else
            if c < 11808 then
              leaf c 11807 131072
            else
              leaf c 11809 98304
        else
          if c < 11823 then
            if c < 11818 then
              leaf c 11817 24576
            else
              leaf c 11822 131072
          else
            if c < 11824 then
              leaf c 11823 8
            else
              leaf c 11833 131072
      else
        if c < 11842 then
          if c < 11840 then
            if c < 11836 then
              leaf c 11835 4096
            else
              leaf c 11839 131072
          else
            if c < 11841 then
              leaf c 11840 4096
            else
              leaf c 11841 131072
        else
          if c < 11856 then
            if c < 11843 then
              leaf c 11842 8192
            else
              leaf c 11855 131072
          else
            if c < 11858 then
              leaf c 11857 2097152
            else
              leaf c 11860 131072
    else
      if c < 12288 then
        if c < 11904 then
          if c < 11872 then
            if c < 11869 then
              leaf c 11868 2147508224
            else
              leaf c 11869 4096
          else
            if c < 11874 then
              leaf c 11873 131072
            else
              leaf c 11875 24576
        else
          if c < 12032 then
            if c < 11931 then
              leaf c 11929 2097152
            else
              leaf c 12019 2097152
          else
            if c < 12272 then
              leaf c 12245 2097152
            else
              leaf c 12287 2097152
      else
        if c < 12294 then
          if c < 12292 then
            if c < 12289 then
              leaf c 12288 4194304
            else
              leaf c 12291 131072
          else
            if c < 12293 then
              leaf c 12292 2097152
            else
              leaf c 12293 8
        else
          if c < 12296 then
            if c < 12295 then
              leaf c 12294 16
            else
              leaf c 12295 512
          else
            if c < 12306 then
              leaf c 12305 24576
            else
              leaf c 12307 2097152
  else
    if c < 12353 then
      if c < 12336 then
        if c < 12320 then
          if c < 12317 then
            if c < 12316 then
              leaf c 12315 24576
            else
              leaf c 12316 4096
          else
            if c < 12319 then
              leaf c 12318 2147508224
            else
              leaf c 12319 16384
        else
          if c < 12330 then
            if c < 12321 then
              leaf c 12320 2097152
            else
              leaf c 12329 512
          else
            if c < 12334 then
              leaf c 12333 32
            else
              leaf c 12335 64
      else
        if c < 12347 then
          if c < 12342 then
            if c < 12337 then
              leaf c 12336 4096
            else
              leaf c 12341 8
          else
            if c < 12344 then
              leaf c 12343 2097152
            else
              leaf c 12346 512
        else
          if c < 12349 then
            if c < 12348 then
              leaf c 12347 8
            else
              leaf c 12348 16
          else
            if c < 12350 then
              leaf c 12349 131072
            else
              leaf c 12351 2097152
    else
      if c < 12540 then
        if c < 12447 then
          if c < 12443 then
            if c < 12441 then
              leaf c 12438 16
            else
              leaf c 12442 32
          else
            if c < 12445 then
              leaf c 12444 1048576
            else
              leaf c 12446 8
        else
          if c < 12449 then
            if c < 12448 then
              leaf c 12447 16
            else
              leaf c 12448 4096
          else
            if c < 12539 then
              leaf c 12538 16
            else
              leaf c 12539 131072
      else
        if c < 12688 then
          if c < 12549 then
            if c < 12543 then
              leaf c 12542 8
            else
              leaf c 12543 16
          else
            if c < 12593 then
              leaf c 12591 16
            else
              leaf c 12686 16
        else
          if c < 12694 then
            if c < 12690 then
              leaf c 12689 2097152
            else
              leaf c 12693 1024
          else
            if c < 12704 then
              leaf c 12703 2097152
            else
              leaf c 12735 16

@[expose]
public def chunk19 (c : Nat) : Nat :=
  if c < 42608 then
    if c < 19968 then
      if c < 12881 then
        if c < 12832 then
          if c < 12784 then
            if c < 12783 then
              leaf c 12773 2097152
            else
              leaf c 12783 2097152
          else
            if c < 12800 then
              leaf c 12799 16
            else
              leaf c 12830 2097152
        else
          if c < 12872 then
            if c < 12842 then
              leaf c 12841 1024
            else
              leaf c 12871 2097152
          else
            if c < 12880 then
              leaf c 12879 1024
            else
              leaf c 12880 2097152
      else
        if c < 12977 then
          if c < 12928 then
            if c < 12896 then
              leaf c 12895 1024
            else
              leaf c 12927 2097152
          else
            if c < 12938 then
              leaf c 12937 1024
            else
              leaf c 12976 2097152
        else
          if c < 13312 then
            if c < 12992 then
              leaf c 12991 1024
            else
              leaf c 13311 2097152
          else
            if c < 19904 then
              leaf c 19903 16
            else
              leaf c 19967 2097152
    else
      if c < 42508 then
        if c < 42192 then
          if c < 40982 then
            if c < 40981 then
              leaf c 40980 16
            else
              leaf c 40981 8
          else
            if c < 42128 then
              leaf c 42124 16
            else
              leaf c 42182 2097152
        else
          if c < 42238 then
            if c < 42232 then
              leaf c 42231 16
            else
              leaf c 42237 8
          else
            if c < 42240 then
              leaf c 42239 131072
            else
              leaf c 42507 16
      else
        if c < 42538 then
          if c < 42512 then
            if c < 42509 then
              leaf c 42508 8
            else
              leaf c 42511 131072
          else
            if c < 42528 then
              leaf c 42527 16
            else
              leaf c 42537 256
        else
          if c < 42606 then
            if c < 42560 then
              leaf c 42539 16
            else
              leaf c 42605 7
          else
            if c < 42607 then
              leaf c 42606 16
            else
              leaf c 42607 32
  else
    if c < 42786 then
      if c < 42654 then
        if c < 42622 then
          if c < 42612 then
            if c < 42611 then
              leaf c 42610 128
            else
              leaf c 42611 131072
          else
            if c < 42620 then
              leaf c 42619 17179869216
            else
              leaf c 42621 32
        else
          if c < 42624 then
            if c < 42623 then
              leaf c 42622 131072
            else
              leaf c 42623 8
          else
            if c < 42652 then
              leaf c 42651 7
            else
              leaf c 42653 8589934600
      else
        if c < 42738 then
          if c < 42726 then
            if c < 42656 then
              leaf c 42655 17179869216
            else
              leaf c 42725 16
          else
            if c < 42736 then
              leaf c 42735 512
            else
              leaf c 42737 32
        else
          if c < 42775 then
            if c < 42752 then
              leaf c 42743 131072
            else
              leaf c 42774 1048576
          else
            if c < 42784 then
              leaf c 42783 8
            else
              leaf c 42785 1048576
    else
      if c < 42889 then
        if c < 42865 then
          if c < 42802 then
            if c < 42800 then
              leaf c 42799 7
            else
              leaf c 42801 2
          else
            if c < 42864 then
              leaf c 42863 7
            else
              leaf c 42864 8589934600
        else
          if c < 42878 then
            if c < 42873 then
              leaf c 42872 2
            else
              leaf c 42877 2147483655
          else
            if c < 42888 then
              leaf c 42887 7
            else
              leaf c 42888 8
      else
        if c < 42900 then
          if c < 42895 then
            if c < 42891 then
              leaf c 42890 1048576
            else
              leaf c 42894 2147483655
          else
            if c < 42896 then
              leaf c 42895 16
            else
              leaf c 42899 7
        else
          if c < 42923 then
            if c < 42902 then
              leaf c 42901 2
            else
              leaf c 42922 7
          else
            if c < 42927 then
              leaf c 42926 1
            else
              leaf c 42928 7

@[expose]
public def chunk20 (c : Nat) : Nat :=
  if c < 43188 then
    if c < 43015 then
      if c < 42997 then
        if c < 42956 then
          if c < 42949 then
            if c < 42933 then
              leaf c 42932 1
            else
              leaf c 42948 7
          else
            if c < 42952 then
              leaf c 42951 1
            else
              leaf c 42955 2147483655
        else
          if c < 42978 then
            if c < 42973 then
              leaf c 42972 7
            else
              leaf c 42973 1
          else
            if c < 42993 then
              leaf c 42978 1
            else
              leaf c 42996 8589934600
      else
        if c < 43003 then
          if c < 43000 then
            if c < 42999 then
              leaf c 42998 2147483655
            else
              leaf c 42999 16
          else
            if c < 43002 then
              leaf c 43001 8589934600
            else
              leaf c 43002 2
        else
          if c < 43011 then
            if c < 43010 then
              leaf c 43009 16
            else
              leaf c 43010 17179869216
          else
            if c < 43014 then
              leaf c 43013 16
            else
              leaf c 43014 32
    else
      if c < 43056 then
        if c < 43045 then
          if c < 43020 then
            if c < 43019 then
              leaf c 43018 16
            else
              leaf c 43019 17179869216
          else
            if c < 43043 then
              leaf c 43042 16
            else
              leaf c 43044 17179869248
        else
          if c < 43048 then
            if c < 43047 then
              leaf c 43046 17179869216
            else
              leaf c 43047 17179869248
          else
            if c < 43052 then
              leaf c 43051 2097152
            else
              leaf c 43052 32
      else
        if c < 43072 then
          if c < 43064 then
            if c < 43062 then
              leaf c 43061 1024
            else
              leaf c 43063 2097152
          else
            if c < 43065 then
              leaf c 43064 524288
            else
              leaf c 43065 2097152
        else
          if c < 43136 then
            if c < 43124 then
              leaf c 43123 16
            else
              leaf c 43127 131072
          else
            if c < 43138 then
              leaf c 43137 17179869248
            else
              leaf c 43187 16
  else
    if c < 43310 then
      if c < 43259 then
        if c < 43216 then
          if c < 43205 then
            if c < 43204 then
              leaf c 43203 17179869248
            else
              leaf c 43204 32
          else
            if c < 43214 then
              leaf c 43205 17179869216
            else
              leaf c 43215 131072
        else
          if c < 43250 then
            if c < 43232 then
              leaf c 43225 256
            else
              leaf c 43249 32
          else
            if c < 43256 then
              leaf c 43255 16
            else
              leaf c 43258 131072
      else
        if c < 43264 then
          if c < 43261 then
            if c < 43260 then
              leaf c 43259 16
            else
              leaf c 43260 131072
          else
            if c < 43263 then
              leaf c 43262 16
            else
              leaf c 43263 17179869216
        else
          if c < 43302 then
            if c < 43274 then
              leaf c 43273 256
            else
              leaf c 43301 16
          else
            if c < 43307 then
              leaf c 43306 17179869216
            else
              leaf c 43309 32
    else
      if c < 43395 then
        if c < 43347 then
          if c < 43335 then
            if c < 43312 then
              leaf c 43311 131072
            else
              leaf c 43334 16
          else
            if c < 43346 then
              leaf c 43345 17179869216
            else
              leaf c 43346 17179869248
        else
          if c < 43360 then
            if c < 43359 then
              leaf c 43347 64
            else
              leaf c 43359 131072
          else
            if c < 43392 then
              leaf c 43388 16
            else
              leaf c 43394 17179869216
      else
        if c < 43446 then
          if c < 43443 then
            if c < 43396 then
              leaf c 43395 17179869248
            else
              leaf c 43442 16
          else
            if c < 43444 then
              leaf c 43443 32
            else
              leaf c 43445 17179869248
        else
          if c < 43452 then
            if c < 43450 then
              leaf c 43449 17179869216
            else
              leaf c 43451 17179869248
          else
            if c < 43454 then
              leaf c 43453 17179869216
            else
              leaf c 43455 17179869248

@[expose]
public def chunk21 (c : Nat) : Nat :=
  if c < 43646 then
    if c < 43573 then
      if c < 43495 then
        if c < 43486 then
          if c < 43471 then
            if c < 43457 then
              leaf c 43456 64
            else
              leaf c 43469 131072
          else
            if c < 43472 then
              leaf c 43471 8
            else
              leaf c 43481 256
        else
          if c < 43493 then
            if c < 43488 then
              leaf c 43487 131072
            else
              leaf c 43492 16
          else
            if c < 43494 then
              leaf c 43493 17179869216
            else
              leaf c 43494 8
      else
        if c < 43561 then
          if c < 43514 then
            if c < 43504 then
              leaf c 43503 16
            else
              leaf c 43513 256
          else
            if c < 43520 then
              leaf c 43518 16
            else
              leaf c 43560 16
        else
          if c < 43569 then
            if c < 43567 then
              leaf c 43566 17179869216
            else
              leaf c 43568 17179869248
          else
            if c < 43571 then
              leaf c 43570 17179869216
            else
              leaf c 43572 17179869248
    else
      if c < 43616 then
        if c < 43596 then
          if c < 43587 then
            if c < 43584 then
              leaf c 43574 17179869216
            else
              leaf c 43586 16
          else
            if c < 43588 then
              leaf c 43587 17179869216
            else
              leaf c 43595 16
        else
          if c < 43600 then
            if c < 43597 then
              leaf c 43596 17179869216
            else
              leaf c 43597 17179869248
          else
            if c < 43612 then
              leaf c 43609 256
            else
              leaf c 43615 131072
      else
        if c < 43642 then
          if c < 43633 then
            if c < 43632 then
              leaf c 43631 16
            else
              leaf c 43632 8
          else
            if c < 43639 then
              leaf c 43638 16
            else
              leaf c 43641 2097152
        else
          if c < 43644 then
            if c < 43643 then
              leaf c 43642 16
            else
              leaf c 43643 17179869248
          else
            if c < 43645 then
              leaf c 43644 17179869216
            else
              leaf c 43645 17179869248
  else
    if c < 43755 then
      if c < 43711 then
        if c < 43701 then
          if c < 43697 then
            if c < 43696 then
              leaf c 43695 16
            else
              leaf c 43696 17179869216
          else
            if c < 43698 then
              leaf c 43697 16
            else
              leaf c 43700 17179869216
        else
          if c < 43705 then
            if c < 43703 then
              leaf c 43702 16
            else
              leaf c 43704 17179869216
          else
            if c < 43710 then
              leaf c 43709 16
            else
              leaf c 43710 17179869216
      else
        if c < 43739 then
          if c < 43713 then
            if c < 43712 then
              leaf c 43711 32
            else
              leaf c 43712 16
          else
            if c < 43714 then
              leaf c 43713 32
            else
              leaf c 43714 16
        else
          if c < 43742 then
            if c < 43741 then
              leaf c 43740 16
            else
              leaf c 43741 8
          else
            if c < 43744 then
              leaf c 43743 131072
            else
              leaf c 43754 16
    else
      if c < 43777 then
        if c < 43762 then
          if c < 43758 then
            if c < 43756 then
              leaf c 43755 17179869248
            else
              leaf c 43757 17179869216
          else
            if c < 43760 then
              leaf c 43759 17179869248
            else
              leaf c 43761 131072
        else
          if c < 43765 then
            if c < 43763 then
              leaf c 43762 16
            else
              leaf c 43764 8
          else
            if c < 43766 then
              leaf c 43765 17179869248
            else
              leaf c 43766 32
      else
        if c < 43816 then
          if c < 43793 then
            if c < 43785 then
              leaf c 43782 16
            else
              leaf c 43790 16
          else
            if c < 43808 then
              leaf c 43798 16
            else
              leaf c 43814 16
        else
          if c < 43867 then
            if c < 43824 then
              leaf c 43822 16
            else
              leaf c 43866 2
          else
            if c < 43868 then
              leaf c 43867 1048576
            else
              leaf c 43871 8589934600

@[expose]
public def chunk22 (c : Nat) : Nat :=
  if c < 64323 then
    if c < 55216 then
      if c < 44006 then
        if c < 43888 then
          if c < 43882 then
            if c < 43881 then
              leaf c 43880 2
            else
              leaf c 43881 8589934600
          else
            if c < 43884 then
              leaf c 43883 1048576
            else
              leaf c 43885 1
        else
          if c < 44003 then
            if c < 43968 then
              leaf c 43967 2
            else
              leaf c 44002 16
          else
            if c < 44005 then
              leaf c 44004 17179869248
            else
              leaf c 44005 17179869216
      else
        if c < 44012 then
          if c < 44009 then
            if c < 44008 then
              leaf c 44007 17179869248
            else
              leaf c 44008 17179869216
          else
            if c < 44011 then
              leaf c 44010 17179869248
            else
              leaf c 44011 131072
        else
          if c < 44016 then
            if c < 44013 then
              leaf c 44012 64
            else
              leaf c 44013 32
          else
            if c < 44032 then
              leaf c 44025 256
            else
              leaf c 55203 16
    else
      if c < 64285 then
        if c < 63744 then
          if c < 55296 then
            if c < 55243 then
              leaf c 55238 16
            else
              leaf c 55291 16
          else
            if c < 57344 then
              leaf c 57343 134217728
            else
              leaf c 63743 268435456
        else
          if c < 64256 then
            if c < 64112 then
              leaf c 64109 16
            else
              leaf c 64217 16
          else
            if c < 64275 then
              leaf c 64262 2
            else
              leaf c 64279 2
      else
        if c < 64298 then
          if c < 64287 then
            if c < 64286 then
              leaf c 64285 16
            else
              leaf c 64286 17179869216
          else
            if c < 64297 then
              leaf c 64296 16
            else
              leaf c 64297 262144
        else
          if c < 64318 then
            if c < 64312 then
              leaf c 64310 16
            else
              leaf c 64316 16
          else
            if c < 64320 then
              leaf c 64318 16
            else
              leaf c 64321 16
  else
    if c < 65047 then
      if c < 64912 then
        if c < 64467 then
          if c < 64434 then
            if c < 64326 then
              leaf c 64324 16
            else
              leaf c 64433 16
          else
            if c < 64451 then
              leaf c 64450 1048576
            else
              leaf c 64466 2097152
        else
          if c < 64832 then
            if c < 64830 then
              leaf c 64829 16
            else
              leaf c 64831 2147508224
          else
            if c < 64848 then
              leaf c 64847 2097152
            else
              leaf c 64911 16
      else
        if c < 65020 then
          if c < 64968 then
            if c < 64914 then
              leaf c 64913 2097152
            else
              leaf c 64967 16
          else
            if c < 65008 then
              leaf c 64975 2097152
            else
              leaf c 65019 16
        else
          if c < 65024 then
            if c < 65021 then
              leaf c 65020 524288
            else
              leaf c 65023 2097152
          else
            if c < 65040 then
              leaf c 65039 32
            else
              leaf c 65046 131072
    else
      if c < 65095 then
        if c < 65073 then
          if c < 65056 then
            if c < 65049 then
              leaf c 65048 2147508224
            else
              leaf c 65049 131072
          else
            if c < 65072 then
              leaf c 65071 32
            else
              leaf c 65072 131072
        else
          if c < 65077 then
            if c < 65075 then
              leaf c 65074 4096
            else
              leaf c 65076 2048
          else
            if c < 65093 then
              leaf c 65092 2147508224
            else
              leaf c 65094 131072
      else
        if c < 65108 then
          if c < 65101 then
            if c < 65097 then
              leaf c 65096 2147508224
            else
              leaf c 65100 131072
          else
            if c < 65104 then
              leaf c 65103 2048
            else
              leaf c 65106 131072
        else
          if c < 65113 then
            if c < 65112 then
              leaf c 65111 131072
            else
              leaf c 65112 4096
          else
            if c < 65119 then
              leaf c 65118 2147508224
            else
              leaf c 65120 131072

@[expose]
public def chunk23 (c : Nat) : Nat :=
  if c < 65372 then
    if c < 65292 then
      if c < 65142 then
        if c < 65128 then
          if c < 65123 then
            if c < 65122 then
              leaf c 65121 34359869440
            else
              leaf c 65122 262144
          else
            if c < 65124 then
              leaf c 65123 34359742464
            else
              leaf c 65126 262144
        else
          if c < 65130 then
            if c < 65129 then
              leaf c 65128 34359869440
            else
              leaf c 65129 524288
          else
            if c < 65136 then
              leaf c 65131 131072
            else
              leaf c 65140 16
      else
        if c < 65285 then
          if c < 65281 then
            if c < 65279 then
              leaf c 65276 16
            else
              leaf c 65279 67108864
          else
            if c < 65284 then
              leaf c 65283 131072
            else
              leaf c 65284 524288
        else
          if c < 65290 then
            if c < 65288 then
              leaf c 65287 131072
            else
              leaf c 65289 24576
          else
            if c < 65291 then
              leaf c 65290 131072
            else
              leaf c 65291 262144
    else
      if c < 65339 then
        if c < 65306 then
          if c < 65294 then
            if c < 65293 then
              leaf c 65292 131072
            else
              leaf c 65293 4096
          else
            if c < 65296 then
              leaf c 65295 131072
            else
              leaf c 65305 256
        else
          if c < 65311 then
            if c < 65308 then
              leaf c 65307 131072
            else
              leaf c 65310 262144
          else
            if c < 65313 then
              leaf c 65312 131072
            else
              leaf c 65338 1
      else
        if c < 65343 then
          if c < 65341 then
            if c < 65340 then
              leaf c 65339 8192
            else
              leaf c 65340 34359869440
          else
            if c < 65342 then
              leaf c 65341 16384
            else
              leaf c 65342 34360786944
        else
          if c < 65345 then
            if c < 65344 then
              leaf c 65343 2048
            else
              leaf c 65344 1048576
          else
            if c < 65371 then
              leaf c 65370 2
            else
              leaf c 65371 8192
  else
    if c < 65504 then
      if c < 65392 then
        if c < 65377 then
          if c < 65374 then
            if c < 65373 then
              leaf c 65372 262144
            else
              leaf c 65373 16384
          else
            if c < 65375 then
              leaf c 65374 262144
            else
              leaf c 65376 2147508224
        else
          if c < 65380 then
            if c < 65378 then
              leaf c 65377 131072
            else
              leaf c 65379 24576
          else
            if c < 65382 then
              leaf c 65381 131072
            else
              leaf c 65391 16
      else
        if c < 65474 then
          if c < 65438 then
            if c < 65393 then
              leaf c 65392 8
            else
              leaf c 65437 16
          else
            if c < 65440 then
              leaf c 65439 8
            else
              leaf c 65470 16
        else
          if c < 65490 then
            if c < 65482 then
              leaf c 65479 16
            else
              leaf c 65487 16
          else
            if c < 65498 then
              leaf c 65495 16
            else
              leaf c 65500 16
    else
      if c < 65529 then
        if c < 65509 then
          if c < 65507 then
            if c < 65506 then
              leaf c 65505 524288
            else
              leaf c 65506 262144
          else
            if c < 65508 then
              leaf c 65507 1048576
            else
              leaf c 65508 2097152
        else
          if c < 65513 then
            if c < 65512 then
              leaf c 65510 524288
            else
              leaf c 65512 2097152
          else
            if c < 65517 then
              leaf c 65516 262144
            else
              leaf c 65518 2097152
      else
        if c < 65576 then
          if c < 65536 then
            if c < 65532 then
              leaf c 65531 67108864
            else
              leaf c 65533 2097152
          else
            if c < 65549 then
              leaf c 65547 16
            else
              leaf c 65574 16
        else
          if c < 65599 then
            if c < 65596 then
              leaf c 65594 16
            else
              leaf c 65597 16
          else
            if c < 65616 then
              leaf c 65613 16
            else
              leaf c 65629 16

@[expose]
public def chunk24 (c : Nat) : Nat :=
  if c < 66600 then
    if c < 66273 then
      if c < 65932 then
        if c < 65856 then
          if c < 65799 then
            if c < 65792 then
              leaf c 65786 16
            else
              leaf c 65794 131072
          else
            if c < 65847 then
              leaf c 65843 1024
            else
              leaf c 65855 2097152
        else
          if c < 65913 then
            if c < 65909 then
              leaf c 65908 512
            else
              leaf c 65912 1024
          else
            if c < 65930 then
              leaf c 65929 2097152
            else
              leaf c 65931 1024
      else
        if c < 66045 then
          if c < 65952 then
            if c < 65936 then
              leaf c 65934 2097152
            else
              leaf c 65948 2097152
          else
            if c < 66000 then
              leaf c 65952 2097152
            else
              leaf c 66044 2097152
        else
          if c < 66208 then
            if c < 66176 then
              leaf c 66045 32
            else
              leaf c 66204 16
          else
            if c < 66272 then
              leaf c 66256 16
            else
              leaf c 66272 32
    else
      if c < 66422 then
        if c < 66369 then
          if c < 66336 then
            if c < 66304 then
              leaf c 66299 1024
            else
              leaf c 66335 16
          else
            if c < 66349 then
              leaf c 66339 1024
            else
              leaf c 66368 16
        else
          if c < 66378 then
            if c < 66370 then
              leaf c 66369 512
            else
              leaf c 66377 16
          else
            if c < 66384 then
              leaf c 66378 512
            else
              leaf c 66421 16
      else
        if c < 66504 then
          if c < 66463 then
            if c < 66432 then
              leaf c 66426 17179869216
            else
              leaf c 66461 16
          else
            if c < 66464 then
              leaf c 66463 131072
            else
              leaf c 66499 16
        else
          if c < 66513 then
            if c < 66512 then
              leaf c 66511 16
            else
              leaf c 66512 131072
          else
            if c < 66560 then
              leaf c 66517 512
            else
              leaf c 66599 1
  else
    if c < 67008 then
      if c < 66928 then
        if c < 66776 then
          if c < 66720 then
            if c < 66640 then
              leaf c 66639 2
            else
              leaf c 66717 16
          else
            if c < 66736 then
              leaf c 66729 256
            else
              leaf c 66771 1
        else
          if c < 66864 then
            if c < 66816 then
              leaf c 66811 2
            else
              leaf c 66855 16
          else
            if c < 66927 then
              leaf c 66915 16
            else
              leaf c 66927 131072
      else
        if c < 66967 then
          if c < 66956 then
            if c < 66940 then
              leaf c 66938 1
            else
              leaf c 66954 1
          else
            if c < 66964 then
              leaf c 66962 1
            else
              leaf c 66965 1
        else
          if c < 66995 then
            if c < 66979 then
              leaf c 66977 2
            else
              leaf c 66993 2
          else
            if c < 67003 then
              leaf c 67001 2
            else
              leaf c 67004 2
    else
      if c < 67506 then
        if c < 67456 then
          if c < 67392 then
            if c < 67072 then
              leaf c 67059 16
            else
              leaf c 67382 16
          else
            if c < 67424 then
              leaf c 67413 16
            else
              leaf c 67431 16
        else
          if c < 67459 then
            if c < 67457 then
              leaf c 67456 8589934600
            else
              leaf c 67458 8
          else
            if c < 67463 then
              leaf c 67461 8589934600
            else
              leaf c 67504 8589934600
      else
        if c < 67639 then
          if c < 67592 then
            if c < 67584 then
              leaf c 67519 8589934600
            else
              leaf c 67589 16
          else
            if c < 67594 then
              leaf c 67592 16
            else
              leaf c 67637 16
        else
          if c < 67647 then
            if c < 67644 then
              leaf c 67640 16
            else
              leaf c 67644 16
          else
            if c < 67671 then
              leaf c 67669 16
            else
              leaf c 67671 131072

@[expose]
public def chunk25 (c : Nat) : Nat :=
  if c < 68221 then
    if c < 68028 then
      if c < 67835 then
        if c < 67712 then
          if c < 67703 then
            if c < 67680 then
              leaf c 67679 1024
            else
              leaf c 67702 16
          else
            if c < 67705 then
              leaf c 67704 2097152
            else
              leaf c 67711 1024
        else
          if c < 67808 then
            if c < 67751 then
              leaf c 67742 16
            else
              leaf c 67759 1024
          else
            if c < 67828 then
              leaf c 67826 16
            else
              leaf c 67829 16
      else
        if c < 67872 then
          if c < 67862 then
            if c < 67840 then
              leaf c 67839 1024
            else
              leaf c 67861 16
          else
            if c < 67871 then
              leaf c 67867 1024
            else
              leaf c 67871 131072
        else
          if c < 67904 then
            if c < 67903 then
              leaf c 67897 16
            else
              leaf c 67903 131072
          else
            if c < 67968 then
              leaf c 67929 16
            else
              leaf c 68023 16
    else
      if c < 68112 then
        if c < 68096 then
          if c < 68032 then
            if c < 68030 then
              leaf c 68029 1024
            else
              leaf c 68031 16
          else
            if c < 68050 then
              leaf c 68047 1024
            else
              leaf c 68095 1024
        else
          if c < 68101 then
            if c < 68097 then
              leaf c 68096 16
            else
              leaf c 68099 17179869216
          else
            if c < 68108 then
              leaf c 68102 17179869216
            else
              leaf c 68111 17179869216
      else
        if c < 68159 then
          if c < 68121 then
            if c < 68117 then
              leaf c 68115 16
            else
              leaf c 68119 16
          else
            if c < 68152 then
              leaf c 68149 16
            else
              leaf c 68154 32
        else
          if c < 68176 then
            if c < 68160 then
              leaf c 68159 32
            else
              leaf c 68168 1024
          else
            if c < 68192 then
              leaf c 68184 131072
            else
              leaf c 68220 16
  else
    if c < 68480 then
      if c < 68331 then
        if c < 68288 then
          if c < 68224 then
            if c < 68223 then
              leaf c 68222 1024
            else
              leaf c 68223 131072
          else
            if c < 68253 then
              leaf c 68252 16
            else
              leaf c 68255 1024
        else
          if c < 68297 then
            if c < 68296 then
              leaf c 68295 16
            else
              leaf c 68296 2097152
          else
            if c < 68325 then
              leaf c 68324 16
            else
              leaf c 68326 32
      else
        if c < 68416 then
          if c < 68352 then
            if c < 68336 then
              leaf c 68335 1024
            else
              leaf c 68342 131072
          else
            if c < 68409 then
              leaf c 68405 16
            else
              leaf c 68415 131072
        else
          if c < 68448 then
            if c < 68440 then
              leaf c 68437 16
            else
              leaf c 68447 1024
          else
            if c < 68472 then
              leaf c 68466 16
            else
              leaf c 68479 1024
    else
      if c < 68900 then
        if c < 68736 then
          if c < 68521 then
            if c < 68505 then
              leaf c 68497 16
            else
              leaf c 68508 131072
          else
            if c < 68608 then
              leaf c 68527 1024
            else
              leaf c 68680 16
        else
          if c < 68858 then
            if c < 68800 then
              leaf c 68786 1
            else
              leaf c 68850 2
          else
            if c < 68864 then
              leaf c 68863 1024
            else
              leaf c 68899 16
      else
        if c < 68942 then
          if c < 68928 then
            if c < 68912 then
              leaf c 68903 17179869216
            else
              leaf c 68921 256
          else
            if c < 68938 then
              leaf c 68937 256
            else
              leaf c 68941 16
        else
          if c < 68944 then
            if c < 68943 then
              leaf c 68942 8
            else
              leaf c 68943 16
          else
            if c < 68969 then
              leaf c 68965 1
            else
              leaf c 68969 17179869216

@[expose]
public def chunk26 (c : Nat) : Nat :=
  if c < 69446 then
    if c < 69328 then
      if c < 69293 then
        if c < 69006 then
          if c < 68975 then
            if c < 68974 then
              leaf c 68973 32
            else
              leaf c 68974 4096
          else
            if c < 68976 then
              leaf c 68975 8
            else
              leaf c 68997 2
        else
          if c < 69248 then
            if c < 69216 then
              leaf c 69007 262144
            else
              leaf c 69246 1024
          else
            if c < 69291 then
              leaf c 69289 16
            else
              leaf c 69292 17179869216
      else
        if c < 69318 then
          if c < 69314 then
            if c < 69296 then
              leaf c 69293 4096
            else
              leaf c 69297 16
          else
            if c < 69317 then
              leaf c 69316 16
            else
              leaf c 69317 8
        else
          if c < 69323 then
            if c < 69321 then
              leaf c 69319 16
            else
              leaf c 69322 1048576
          else
            if c < 69326 then
              leaf c 69325 17179869216
            else
              leaf c 69327 32
    else
      if c < 69367 then
        if c < 69363 then
          if c < 69337 then
            if c < 69329 then
              leaf c 69328 131072
            else
              leaf c 69336 2097152
          else
            if c < 69360 then
              leaf c 69358 16
            else
              leaf c 69362 32
        else
          if c < 69365 then
            if c < 69364 then
              leaf c 69363 17179869216
            else
              leaf c 69364 32
          else
            if c < 69366 then
              leaf c 69365 17179869216
            else
              leaf c 69366 32
      else
        if c < 69376 then
          if c < 69370 then
            if c < 69369 then
              leaf c 69368 17179869216
            else
              leaf c 69369 32
          else
            if c < 69373 then
              leaf c 69372 17179869216
            else
              leaf c 69375 32
        else
          if c < 69415 then
            if c < 69405 then
              leaf c 69404 16
            else
              leaf c 69414 1024
          else
            if c < 69424 then
              leaf c 69415 16
            else
              leaf c 69445 16
  else
    if c < 69714 then
      if c < 69600 then
        if c < 69506 then
          if c < 69461 then
            if c < 69457 then
              leaf c 69456 32
            else
              leaf c 69460 1024
          else
            if c < 69488 then
              leaf c 69465 131072
            else
              leaf c 69505 16
        else
          if c < 69552 then
            if c < 69510 then
              leaf c 69509 32
            else
              leaf c 69513 131072
          else
            if c < 69573 then
              leaf c 69572 16
            else
              leaf c 69579 1024
      else
        if c < 69635 then
          if c < 69633 then
            if c < 69632 then
              leaf c 69622 16
            else
              leaf c 69632 17179869248
          else
            if c < 69634 then
              leaf c 69633 17179869216
            else
              leaf c 69634 17179869248
        else
          if c < 69702 then
            if c < 69688 then
              leaf c 69687 16
            else
              leaf c 69701 17179869216
          else
            if c < 69703 then
              leaf c 69702 32
            else
              leaf c 69709 131072
    else
      if c < 69762 then
        if c < 69747 then
          if c < 69744 then
            if c < 69734 then
              leaf c 69733 1024
            else
              leaf c 69743 256
          else
            if c < 69745 then
              leaf c 69744 32
            else
              leaf c 69746 16
        else
          if c < 69759 then
            if c < 69749 then
              leaf c 69748 17179869216
            else
              leaf c 69749 16
          else
            if c < 69760 then
              leaf c 69759 32
            else
              leaf c 69761 17179869216
      else
        if c < 69815 then
          if c < 69808 then
            if c < 69763 then
              leaf c 69762 17179869248
            else
              leaf c 69807 16
          else
            if c < 69811 then
              leaf c 69810 17179869248
            else
              leaf c 69814 17179869216
        else
          if c < 69819 then
            if c < 69817 then
              leaf c 69816 17179869248
            else
              leaf c 69818 32
          else
            if c < 69821 then
              leaf c 69820 131072
            else
              leaf c 69821 67108864

@[expose]
public def chunk27 (c : Nat) : Nat :=
  if c < 70095 then
    if c < 69968 then
      if c < 69932 then
        if c < 69872 then
          if c < 69837 then
            if c < 69826 then
              leaf c 69825 131072
            else
              leaf c 69826 17179869216
          else
            if c < 69840 then
              leaf c 69837 67108864
            else
              leaf c 69864 16
        else
          if c < 69891 then
            if c < 69888 then
              leaf c 69881 256
            else
              leaf c 69890 17179869216
          else
            if c < 69927 then
              leaf c 69926 16
            else
              leaf c 69931 17179869216
      else
        if c < 69952 then
          if c < 69939 then
            if c < 69933 then
              leaf c 69932 17179869248
            else
              leaf c 69938 17179869216
          else
            if c < 69942 then
              leaf c 69940 32
            else
              leaf c 69951 256
        else
          if c < 69957 then
            if c < 69956 then
              leaf c 69955 131072
            else
              leaf c 69956 16
          else
            if c < 69959 then
              leaf c 69958 17179869248
            else
              leaf c 69959 16
    else
      if c < 70070 then
        if c < 70016 then
          if c < 70004 then
            if c < 70003 then
              leaf c 70002 16
            else
              leaf c 70003 32
          else
            if c < 70006 then
              leaf c 70005 131072
            else
              leaf c 70006 16
        else
          if c < 70019 then
            if c < 70018 then
              leaf c 70017 17179869216
            else
              leaf c 70018 17179869248
          else
            if c < 70067 then
              leaf c 70066 16
            else
              leaf c 70069 17179869248
      else
        if c < 70085 then
          if c < 70080 then
            if c < 70079 then
              leaf c 70078 17179869216
            else
              leaf c 70079 17179869248
          else
            if c < 70081 then
              leaf c 70080 64
            else
              leaf c 70084 16
        else
          if c < 70093 then
            if c < 70089 then
              leaf c 70088 131072
            else
              leaf c 70092 32
          else
            if c < 70094 then
              leaf c 70093 131072
            else
              leaf c 70094 17179869248
  else
    if c < 70200 then
      if c < 70163 then
        if c < 70108 then
          if c < 70106 then
            if c < 70096 then
              leaf c 70095 17179869216
            else
              leaf c 70105 256
          else
            if c < 70107 then
              leaf c 70106 16
            else
              leaf c 70107 131072
        else
          if c < 70113 then
            if c < 70109 then
              leaf c 70108 16
            else
              leaf c 70111 131072
          else
            if c < 70144 then
              leaf c 70132 1024
            else
              leaf c 70161 16
      else
        if c < 70196 then
          if c < 70191 then
            if c < 70188 then
              leaf c 70187 16
            else
              leaf c 70190 17179869248
          else
            if c < 70194 then
              leaf c 70193 17179869216
            else
              leaf c 70195 17179869248
        else
          if c < 70198 then
            if c < 70197 then
              leaf c 70196 17179869216
            else
              leaf c 70197 64
          else
            if c < 70199 then
              leaf c 70198 32
            else
              leaf c 70199 17179869216
    else
      if c < 70303 then
        if c < 70272 then
          if c < 70207 then
            if c < 70206 then
              leaf c 70205 131072
            else
              leaf c 70206 17179869216
          else
            if c < 70209 then
              leaf c 70208 16
            else
              leaf c 70209 17179869216
        else
          if c < 70282 then
            if c < 70280 then
              leaf c 70278 16
            else
              leaf c 70280 16
          else
            if c < 70287 then
              leaf c 70285 16
            else
              leaf c 70301 16
      else
        if c < 70368 then
          if c < 70320 then
            if c < 70313 then
              leaf c 70312 16
            else
              leaf c 70313 131072
          else
            if c < 70367 then
              leaf c 70366 16
            else
              leaf c 70367 17179869216
        else
          if c < 70377 then
            if c < 70371 then
              leaf c 70370 17179869248
            else
              leaf c 70376 17179869216
          else
            if c < 70384 then
              leaf c 70378 32
            else
              leaf c 70393 256

@[expose]
public def chunk28 (c : Nat) : Nat :=
  if c < 70604 then
    if c < 70480 then
      if c < 70459 then
        if c < 70419 then
          if c < 70405 then
            if c < 70402 then
              leaf c 70401 17179869216
            else
              leaf c 70403 17179869248
          else
            if c < 70415 then
              leaf c 70412 16
            else
              leaf c 70416 16
        else
          if c < 70450 then
            if c < 70442 then
              leaf c 70440 16
            else
              leaf c 70448 16
          else
            if c < 70453 then
              leaf c 70451 16
            else
              leaf c 70457 16
      else
        if c < 70465 then
          if c < 70462 then
            if c < 70461 then
              leaf c 70460 32
            else
              leaf c 70461 16
          else
            if c < 70464 then
              leaf c 70463 17179869248
            else
              leaf c 70464 17179869216
        else
          if c < 70475 then
            if c < 70471 then
              leaf c 70468 17179869248
            else
              leaf c 70472 17179869248
          else
            if c < 70477 then
              leaf c 70476 17179869248
            else
              leaf c 70477 64
    else
      if c < 70542 then
        if c < 70502 then
          if c < 70493 then
            if c < 70487 then
              leaf c 70480 16
            else
              leaf c 70487 17179869248
          else
            if c < 70498 then
              leaf c 70497 16
            else
              leaf c 70499 17179869248
        else
          if c < 70528 then
            if c < 70512 then
              leaf c 70508 32
            else
              leaf c 70516 32
          else
            if c < 70539 then
              leaf c 70537 16
            else
              leaf c 70539 16
      else
        if c < 70587 then
          if c < 70583 then
            if c < 70544 then
              leaf c 70542 16
            else
              leaf c 70581 16
          else
            if c < 70584 then
              leaf c 70583 16
            else
              leaf c 70586 17179869248
        else
          if c < 70597 then
            if c < 70594 then
              leaf c 70592 17179869216
            else
              leaf c 70594 17179869248
          else
            if c < 70599 then
              leaf c 70597 17179869248
            else
              leaf c 70602 17179869248
  else
    if c < 70725 then
      if c < 70615 then
        if c < 70609 then
          if c < 70607 then
            if c < 70606 then
              leaf c 70605 17179869248
            else
              leaf c 70606 32
          else
            if c < 70608 then
              leaf c 70607 64
            else
              leaf c 70608 32
        else
          if c < 70611 then
            if c < 70610 then
              leaf c 70609 16
            else
              leaf c 70610 32
          else
            if c < 70612 then
              leaf c 70611 16
            else
              leaf c 70613 131072
      else
        if c < 70712 then
          if c < 70656 then
            if c < 70625 then
              leaf c 70616 131072
            else
              leaf c 70626 32
          else
            if c < 70709 then
              leaf c 70708 16
            else
              leaf c 70711 17179869248
        else
          if c < 70722 then
            if c < 70720 then
              leaf c 70719 17179869216
            else
              leaf c 70721 17179869248
          else
            if c < 70723 then
              leaf c 70722 32
            else
              leaf c 70724 17179869216
    else
      if c < 70751 then
        if c < 70736 then
          if c < 70727 then
            if c < 70726 then
              leaf c 70725 17179869248
            else
              leaf c 70726 32
          else
            if c < 70731 then
              leaf c 70730 16
            else
              leaf c 70735 131072
        else
          if c < 70749 then
            if c < 70746 then
              leaf c 70745 256
            else
              leaf c 70747 131072
          else
            if c < 70750 then
              leaf c 70749 131072
            else
              leaf c 70750 32
      else
        if c < 70841 then
          if c < 70832 then
            if c < 70784 then
              leaf c 70753 16
            else
              leaf c 70831 16
          else
            if c < 70835 then
              leaf c 70834 17179869248
            else
              leaf c 70840 17179869216
        else
          if c < 70843 then
            if c < 70842 then
              leaf c 70841 17179869248
            else
              leaf c 70842 17179869216
          else
            if c < 70847 then
              leaf c 70846 17179869248
            else
              leaf c 70848 17179869216

@[expose]
public def chunk29 (c : Nat) : Nat :=
  if c < 71342 then
    if c < 71168 then
      if c < 71090 then
        if c < 70855 then
          if c < 70852 then
            if c < 70850 then
              leaf c 70849 17179869248
            else
              leaf c 70851 32
          else
            if c < 70854 then
              leaf c 70853 16
            else
              leaf c 70854 131072
        else
          if c < 71040 then
            if c < 70864 then
              leaf c 70855 16
            else
              leaf c 70873 256
          else
            if c < 71087 then
              leaf c 71086 16
            else
              leaf c 71089 17179869248
      else
        if c < 71103 then
          if c < 71100 then
            if c < 71096 then
              leaf c 71093 17179869216
            else
              leaf c 71099 17179869248
          else
            if c < 71102 then
              leaf c 71101 17179869216
            else
              leaf c 71102 17179869248
        else
          if c < 71128 then
            if c < 71105 then
              leaf c 71104 32
            else
              leaf c 71127 131072
          else
            if c < 71132 then
              leaf c 71131 16
            else
              leaf c 71133 17179869216
    else
      if c < 71233 then
        if c < 71229 then
          if c < 71219 then
            if c < 71216 then
              leaf c 71215 16
            else
              leaf c 71218 17179869248
          else
            if c < 71227 then
              leaf c 71226 17179869216
            else
              leaf c 71228 17179869248
        else
          if c < 71231 then
            if c < 71230 then
              leaf c 71229 17179869216
            else
              leaf c 71230 17179869248
          else
            if c < 71232 then
              leaf c 71231 32
            else
              leaf c 71232 17179869216
      else
        if c < 71296 then
          if c < 71248 then
            if c < 71236 then
              leaf c 71235 131072
            else
              leaf c 71236 16
          else
            if c < 71264 then
              leaf c 71257 256
            else
              leaf c 71276 131072
        else
          if c < 71340 then
            if c < 71339 then
              leaf c 71338 16
            else
              leaf c 71339 17179869216
          else
            if c < 71341 then
              leaf c 71340 17179869248
            else
              leaf c 71341 17179869216
  else
    if c < 71467 then
      if c < 71424 then
        if c < 71352 then
          if c < 71350 then
            if c < 71344 then
              leaf c 71343 17179869248
            else
              leaf c 71349 17179869216
          else
            if c < 71351 then
              leaf c 71350 64
            else
              leaf c 71351 32
        else
          if c < 71360 then
            if c < 71353 then
              leaf c 71352 16
            else
              leaf c 71353 131072
          else
            if c < 71376 then
              leaf c 71369 256
            else
              leaf c 71395 256
      else
        if c < 71456 then
          if c < 71454 then
            if c < 71453 then
              leaf c 71450 16
            else
              leaf c 71453 17179869216
          else
            if c < 71455 then
              leaf c 71454 17179869248
            else
              leaf c 71455 17179869216
        else
          if c < 71462 then
            if c < 71458 then
              leaf c 71457 17179869248
            else
              leaf c 71461 17179869216
          else
            if c < 71463 then
              leaf c 71462 17179869248
            else
              leaf c 71466 17179869216
    else
      if c < 71727 then
        if c < 71487 then
          if c < 71482 then
            if c < 71472 then
              leaf c 71467 32
            else
              leaf c 71481 256
          else
            if c < 71484 then
              leaf c 71483 1024
            else
              leaf c 71486 131072
        else
          if c < 71680 then
            if c < 71488 then
              leaf c 71487 2097152
            else
              leaf c 71494 16
          else
            if c < 71724 then
              leaf c 71723 16
            else
              leaf c 71726 17179869248
      else
        if c < 71840 then
          if c < 71737 then
            if c < 71736 then
              leaf c 71735 17179869216
            else
              leaf c 71736 17179869248
          else
            if c < 71739 then
              leaf c 71738 32
            else
              leaf c 71739 131072
        else
          if c < 71904 then
            if c < 71872 then
              leaf c 71871 1
            else
              leaf c 71903 2
          else
            if c < 71914 then
              leaf c 71913 256
            else
              leaf c 71922 1024

@[expose]
public def chunk30 (c : Nat) : Nat :=
  if c < 72245 then
    if c < 72016 then
      if c < 71997 then
        if c < 71960 then
          if c < 71948 then
            if c < 71945 then
              leaf c 71942 16
            else
              leaf c 71945 16
          else
            if c < 71957 then
              leaf c 71955 16
            else
              leaf c 71958 16
        else
          if c < 71991 then
            if c < 71984 then
              leaf c 71983 16
            else
              leaf c 71989 17179869248
          else
            if c < 71995 then
              leaf c 71992 17179869248
            else
              leaf c 71996 17179869216
      else
        if c < 72001 then
          if c < 71999 then
            if c < 71998 then
              leaf c 71997 64
            else
              leaf c 71998 32
          else
            if c < 72000 then
              leaf c 71999 16
            else
              leaf c 72000 17179869248
        else
          if c < 72003 then
            if c < 72002 then
              leaf c 72001 16
            else
              leaf c 72002 17179869248
          else
            if c < 72004 then
              leaf c 72003 32
            else
              leaf c 72006 131072
    else
      if c < 72161 then
        if c < 72148 then
          if c < 72106 then
            if c < 72096 then
              leaf c 72025 256
            else
              leaf c 72103 16
          else
            if c < 72145 then
              leaf c 72144 16
            else
              leaf c 72147 17179869248
        else
          if c < 72156 then
            if c < 72154 then
              leaf c 72151 17179869216
            else
              leaf c 72155 17179869216
          else
            if c < 72160 then
              leaf c 72159 17179869248
            else
              leaf c 72160 32
      else
        if c < 72192 then
          if c < 72163 then
            if c < 72162 then
              leaf c 72161 16
            else
              leaf c 72162 131072
          else
            if c < 72164 then
              leaf c 72163 16
            else
              leaf c 72164 17179869248
        else
          if c < 72203 then
            if c < 72193 then
              leaf c 72192 16
            else
              leaf c 72202 17179869216
          else
            if c < 72243 then
              leaf c 72242 16
            else
              leaf c 72244 32
  else
    if c < 72350 then
      if c < 72279 then
        if c < 72255 then
          if c < 72250 then
            if c < 72249 then
              leaf c 72248 17179869216
            else
              leaf c 72249 17179869248
          else
            if c < 72251 then
              leaf c 72250 16
            else
              leaf c 72254 17179869216
        else
          if c < 72272 then
            if c < 72263 then
              leaf c 72262 131072
            else
              leaf c 72263 32
          else
            if c < 72273 then
              leaf c 72272 16
            else
              leaf c 72278 17179869216
      else
        if c < 72343 then
          if c < 72284 then
            if c < 72281 then
              leaf c 72280 17179869248
            else
              leaf c 72283 17179869216
          else
            if c < 72330 then
              leaf c 72329 16
            else
              leaf c 72342 17179869216
        else
          if c < 72346 then
            if c < 72344 then
              leaf c 72343 17179869248
            else
              leaf c 72345 32
          else
            if c < 72349 then
              leaf c 72348 131072
            else
              leaf c 72349 16
    else
      if c < 72550 then
        if c < 72544 then
          if c < 72448 then
            if c < 72368 then
              leaf c 72354 131072
            else
              leaf c 72440 16
          else
            if c < 72458 then
              leaf c 72457 131072
            else
              leaf c 72458 16
        else
          if c < 72546 then
            if c < 72545 then
              leaf c 72544 17179869216
            else
              leaf c 72545 17179869248
          else
            if c < 72549 then
              leaf c 72548 17179869216
            else
              leaf c 72549 17179869248
      else
        if c < 72688 then
          if c < 72640 then
            if c < 72551 then
              leaf c 72550 17179869216
            else
              leaf c 72551 17179869248
          else
            if c < 72673 then
              leaf c 72672 16
            else
              leaf c 72673 131072
        else
          if c < 72714 then
            if c < 72704 then
              leaf c 72697 256
            else
              leaf c 72712 16
          else
            if c < 72751 then
              leaf c 72750 16
            else
              leaf c 72751 17179869248

@[expose]
public def chunk31 (c : Nat) : Nat :=
  if c < 73066 then
    if c < 72885 then
      if c < 72816 then
        if c < 72768 then
          if c < 72766 then
            if c < 72760 then
              leaf c 72758 17179869216
            else
              leaf c 72765 17179869216
          else
            if c < 72767 then
              leaf c 72766 17179869248
            else
              leaf c 72767 32
        else
          if c < 72784 then
            if c < 72769 then
              leaf c 72768 16
            else
              leaf c 72773 131072
          else
            if c < 72794 then
              leaf c 72793 256
            else
              leaf c 72812 1024
      else
        if c < 72874 then
          if c < 72850 then
            if c < 72818 then
              leaf c 72817 131072
            else
              leaf c 72847 16
          else
            if c < 72873 then
              leaf c 72871 17179869216
            else
              leaf c 72873 17179869248
        else
          if c < 72882 then
            if c < 72881 then
              leaf c 72880 17179869216
            else
              leaf c 72881 17179869248
          else
            if c < 72884 then
              leaf c 72883 17179869216
            else
              leaf c 72884 17179869248
    else
      if c < 73026 then
        if c < 73009 then
          if c < 72968 then
            if c < 72960 then
              leaf c 72886 17179869216
            else
              leaf c 72966 16
          else
            if c < 72971 then
              leaf c 72969 16
            else
              leaf c 73008 16
        else
          if c < 73020 then
            if c < 73018 then
              leaf c 73014 17179869216
            else
              leaf c 73018 17179869216
          else
            if c < 73023 then
              leaf c 73021 17179869216
            else
              leaf c 73025 17179869216
      else
        if c < 73031 then
          if c < 73028 then
            if c < 73027 then
              leaf c 73026 32
            else
              leaf c 73027 17179869216
          else
            if c < 73030 then
              leaf c 73029 32
            else
              leaf c 73030 16
        else
          if c < 73056 then
            if c < 73040 then
              leaf c 73031 17179869216
            else
              leaf c 73049 256
          else
            if c < 73063 then
              leaf c 73061 16
            else
              leaf c 73064 16
  else
    if c < 73459 then
      if c < 73120 then
        if c < 73109 then
          if c < 73104 then
            if c < 73098 then
              leaf c 73097 16
            else
              leaf c 73102 17179869248
          else
            if c < 73107 then
              leaf c 73105 17179869216
            else
              leaf c 73108 17179869248
        else
          if c < 73111 then
            if c < 73110 then
              leaf c 73109 17179869216
            else
              leaf c 73110 17179869248
          else
            if c < 73112 then
              leaf c 73111 32
            else
              leaf c 73112 16
      else
        if c < 73184 then
          if c < 73177 then
            if c < 73136 then
              leaf c 73129 256
            else
              leaf c 73176 16
          else
            if c < 73178 then
              leaf c 73177 8
            else
              leaf c 73179 16
        else
          if c < 73201 then
            if c < 73200 then
              leaf c 73193 256
            else
              leaf c 73200 17179869216
          else
            if c < 73440 then
              leaf c 73201 16
            else
              leaf c 73458 16
    else
      if c < 73524 then
        if c < 73474 then
          if c < 73463 then
            if c < 73461 then
              leaf c 73460 17179869216
            else
              leaf c 73462 17179869248
          else
            if c < 73472 then
              leaf c 73464 131072
            else
              leaf c 73473 17179869216
        else
          if c < 73476 then
            if c < 73475 then
              leaf c 73474 16
            else
              leaf c 73475 17179869248
          else
            if c < 73490 then
              leaf c 73488 16
            else
              leaf c 73523 16
      else
        if c < 73537 then
          if c < 73534 then
            if c < 73526 then
              leaf c 73525 17179869248
            else
              leaf c 73530 17179869216
          else
            if c < 73536 then
              leaf c 73535 17179869248
            else
              leaf c 73536 17179869216
        else
          if c < 73539 then
            if c < 73538 then
              leaf c 73537 64
            else
              leaf c 73538 32
          else
            if c < 73552 then
              leaf c 73551 131072
            else
              leaf c 73561 256

@[expose]
public def chunk32 (c : Nat) : Nat :=
  if c < 92784 then
    if c < 78896 then
      if c < 74752 then
        if c < 73693 then
          if c < 73664 then
            if c < 73648 then
              leaf c 73562 32
            else
              leaf c 73648 16
          else
            if c < 73685 then
              leaf c 73684 1024
            else
              leaf c 73692 2097152
        else
          if c < 73727 then
            if c < 73697 then
              leaf c 73696 524288
            else
              leaf c 73713 2097152
          else
            if c < 73728 then
              leaf c 73727 131072
            else
              leaf c 74649 16
      else
        if c < 75088 then
          if c < 74869 then
            if c < 74864 then
              leaf c 74863 512
            else
              leaf c 74868 131072
          else
            if c < 74880 then
              leaf c 74879 512
            else
              leaf c 75075 16
        else
          if c < 77809 then
            if c < 77712 then
              leaf c 75398 512
            else
              leaf c 77808 16
          else
            if c < 77824 then
              leaf c 77810 131072
            else
              leaf c 78895 16
    else
      if c < 90410 then
        if c < 78944 then
          if c < 78913 then
            if c < 78912 then
              leaf c 78911 67108864
            else
              leaf c 78912 32
          else
            if c < 78919 then
              leaf c 78918 16
            else
              leaf c 78933 32
        else
          if c < 90368 then
            if c < 82944 then
              leaf c 82938 16
            else
              leaf c 83526 16
          else
            if c < 90398 then
              leaf c 90397 16
            else
              leaf c 90409 17179869216
      else
        if c < 92160 then
          if c < 90415 then
            if c < 90413 then
              leaf c 90412 17179869248
            else
              leaf c 90414 17179869216
          else
            if c < 90416 then
              leaf c 90415 32
            else
              leaf c 90425 256
        else
          if c < 92768 then
            if c < 92736 then
              leaf c 92728 16
            else
              leaf c 92766 16
          else
            if c < 92782 then
              leaf c 92777 256
            else
              leaf c 92783 131072
  else
    if c < 93504 then
      if c < 92988 then
        if c < 92917 then
          if c < 92880 then
            if c < 92864 then
              leaf c 92862 16
            else
              leaf c 92873 256
          else
            if c < 92912 then
              leaf c 92909 16
            else
              leaf c 92916 32
        else
          if c < 92976 then
            if c < 92928 then
              leaf c 92917 131072
            else
              leaf c 92975 16
          else
            if c < 92983 then
              leaf c 92982 32
            else
              leaf c 92987 131072
      else
        if c < 93008 then
          if c < 92996 then
            if c < 92992 then
              leaf c 92991 2097152
            else
              leaf c 92995 8
          else
            if c < 92997 then
              leaf c 92996 131072
            else
              leaf c 92997 2097152
        else
          if c < 93027 then
            if c < 93019 then
              leaf c 93017 256
            else
              leaf c 93025 1024
          else
            if c < 93053 then
              leaf c 93047 16
            else
              leaf c 93071 16
    else
      if c < 93847 then
        if c < 93552 then
          if c < 93547 then
            if c < 93507 then
              leaf c 93506 8
            else
              leaf c 93546 16
          else
            if c < 93549 then
              leaf c 93548 8
            else
              leaf c 93551 131072
        else
          if c < 93792 then
            if c < 93760 then
              leaf c 93561 256
            else
              leaf c 93791 1
          else
            if c < 93824 then
              leaf c 93823 2
            else
              leaf c 93846 1024
      else
        if c < 94031 then
          if c < 93883 then
            if c < 93856 then
              leaf c 93850 131072
            else
              leaf c 93880 1
          else
            if c < 93952 then
              leaf c 93907 2
            else
              leaf c 94026 16
        else
          if c < 94033 then
            if c < 94032 then
              leaf c 94031 17179869216
            else
              leaf c 94032 16
          else
            if c < 94095 then
              leaf c 94087 17179869248
            else
              leaf c 94098 17179869216

@[expose]
public def chunk33 (c : Nat) : Nat :=
  if c < 118000 then
    if c < 110592 then
      if c < 94208 then
        if c < 94180 then
          if c < 94178 then
            if c < 94176 then
              leaf c 94111 8
            else
              leaf c 94177 8
          else
            if c < 94179 then
              leaf c 94178 131072
            else
              leaf c 94179 8
        else
          if c < 94194 then
            if c < 94192 then
              leaf c 94180 32
            else
              leaf c 94193 17179869248
          else
            if c < 94196 then
              leaf c 94195 8
            else
              leaf c 94198 512
      else
        if c < 102816 then
          if c < 101760 then
            if c < 101631 then
              leaf c 101594 16
            else
              leaf c 101664 16
          else
            if c < 101888 then
              leaf c 101874 16
            else
              leaf c 102801 16
        else
          if c < 110581 then
            if c < 110576 then
              leaf c 102866 16
            else
              leaf c 110579 8
          else
            if c < 110589 then
              leaf c 110587 8
            else
              leaf c 110590 8
    else
      if c < 113792 then
        if c < 110948 then
          if c < 110928 then
            if c < 110898 then
              leaf c 110888 16
            else
              leaf c 110898 16
          else
            if c < 110933 then
              leaf c 110930 16
            else
              leaf c 110933 16
        else
          if c < 113664 then
            if c < 110960 then
              leaf c 110952 16
            else
              leaf c 111355 16
          else
            if c < 113776 then
              leaf c 113770 16
            else
              leaf c 113788 16
      else
        if c < 113822 then
          if c < 113820 then
            if c < 113808 then
              leaf c 113800 16
            else
              leaf c 113817 16
          else
            if c < 113821 then
              leaf c 113820 2097152
            else
              leaf c 113821 32
        else
          if c < 113824 then
            if c < 113823 then
              leaf c 113822 17179869216
            else
              leaf c 113823 131072
          else
            if c < 117760 then
              leaf c 113827 67108864
            else
              leaf c 117999 2097152
  else
    if c < 119143 then
      if c < 118528 then
        if c < 118482 then
          if c < 118016 then
            if c < 118010 then
              leaf c 118009 256
            else
              leaf c 118012 2097152
          else
            if c < 118458 then
              leaf c 118451 2097152
            else
              leaf c 118480 2097152
        else
          if c < 118496 then
            if c < 118493 then
              leaf c 118484 2097152
            else
              leaf c 118495 262144
          else
            if c < 118512 then
              leaf c 118511 2097152
            else
              leaf c 118525 262144
      else
        if c < 119040 then
          if c < 118608 then
            if c < 118576 then
              leaf c 118573 32
            else
              leaf c 118598 32
          else
            if c < 118784 then
              leaf c 118723 2097152
            else
              leaf c 119029 2097152
        else
          if c < 119081 then
            if c < 119079 then
              leaf c 119078 2097152
            else
              leaf c 119080 32
          else
            if c < 119141 then
              leaf c 119140 2097152
            else
              leaf c 119142 64
    else
      if c < 119210 then
        if c < 119163 then
          if c < 119149 then
            if c < 119146 then
              leaf c 119145 32
            else
              leaf c 119148 2097152
          else
            if c < 119155 then
              leaf c 119154 64
            else
              leaf c 119162 67108864
        else
          if c < 119173 then
            if c < 119171 then
              leaf c 119170 32
            else
              leaf c 119172 2097152
          else
            if c < 119180 then
              leaf c 119179 32
            else
              leaf c 119209 2097152
      else
        if c < 119376 then
          if c < 119362 then
            if c < 119214 then
              leaf c 119213 32
            else
              leaf c 119361 2097152
          else
            if c < 119365 then
              leaf c 119364 32
            else
              leaf c 119365 2097152
        else
          if c < 119387 then
            if c < 119379 then
              leaf c 119378 64
            else
              leaf c 119386 2097152
          else
            if c < 119389 then
              leaf c 119388 32
            else
              leaf c 119390 2097152

@[expose]
public def chunk34 (c : Nat) : Nat :=
  if c < 120123 then
    if c < 119970 then
      if c < 119834 then
        if c < 119520 then
          if c < 119424 then
            if c < 119392 then
              leaf c 119391 64
            else
              leaf c 119423 2097152
          else
            if c < 119488 then
              leaf c 119425 64
            else
              leaf c 119507 1024
        else
          if c < 119648 then
            if c < 119552 then
              leaf c 119539 1024
            else
              leaf c 119638 2097152
          else
            if c < 119808 then
              leaf c 119672 1024
            else
              leaf c 119833 34359738369
      else
        if c < 119912 then
          if c < 119886 then
            if c < 119860 then
              leaf c 119859 34359738370
            else
              leaf c 119885 34359738369
          else
            if c < 119894 then
              leaf c 119892 34359738370
            else
              leaf c 119911 34359738370
        else
          if c < 119964 then
            if c < 119938 then
              leaf c 119937 34359738369
            else
              leaf c 119963 34359738370
          else
            if c < 119966 then
              leaf c 119964 34359738369
            else
              leaf c 119967 34359738369
    else
      if c < 120016 then
        if c < 119990 then
          if c < 119977 then
            if c < 119973 then
              leaf c 119970 34359738369
            else
              leaf c 119974 34359738369
          else
            if c < 119982 then
              leaf c 119980 34359738369
            else
              leaf c 119989 34359738369
        else
          if c < 119997 then
            if c < 119995 then
              leaf c 119993 34359738370
            else
              leaf c 119995 34359738370
          else
            if c < 120005 then
              leaf c 120003 34359738370
            else
              leaf c 120015 34359738370
      else
        if c < 120077 then
          if c < 120068 then
            if c < 120042 then
              leaf c 120041 34359738369
            else
              leaf c 120067 34359738370
          else
            if c < 120071 then
              leaf c 120069 34359738369
            else
              leaf c 120074 34359738369
        else
          if c < 120094 then
            if c < 120086 then
              leaf c 120084 34359738369
            else
              leaf c 120092 34359738369
          else
            if c < 120120 then
              leaf c 120119 34359738370
            else
              leaf c 120121 34359738369
  else
    if c < 120458 then
      if c < 120250 then
        if c < 120146 then
          if c < 120134 then
            if c < 120128 then
              leaf c 120126 34359738369
            else
              leaf c 120132 34359738369
          else
            if c < 120138 then
              leaf c 120134 34359738369
            else
              leaf c 120144 34359738369
        else
          if c < 120198 then
            if c < 120172 then
              leaf c 120171 34359738370
            else
              leaf c 120197 34359738369
          else
            if c < 120224 then
              leaf c 120223 34359738370
            else
              leaf c 120249 34359738369
      else
        if c < 120354 then
          if c < 120302 then
            if c < 120276 then
              leaf c 120275 34359738370
            else
              leaf c 120301 34359738369
          else
            if c < 120328 then
              leaf c 120327 34359738370
            else
              leaf c 120353 34359738369
        else
          if c < 120406 then
            if c < 120380 then
              leaf c 120379 34359738370
            else
              leaf c 120405 34359738369
          else
            if c < 120432 then
              leaf c 120431 34359738370
            else
              leaf c 120457 34359738369
    else
      if c < 120572 then
        if c < 120539 then
          if c < 120513 then
            if c < 120488 then
              leaf c 120486 34359738370
            else
              leaf c 120512 34359738369
          else
            if c < 120514 then
              leaf c 120513 262144
            else
              leaf c 120538 34359738370
        else
          if c < 120546 then
            if c < 120540 then
              leaf c 120539 262144
            else
              leaf c 120545 34359738370
          else
            if c < 120571 then
              leaf c 120570 34359738369
            else
              leaf c 120571 262144
      else
        if c < 120629 then
          if c < 120598 then
            if c < 120597 then
              leaf c 120596 34359738370
            else
              leaf c 120597 262144
          else
            if c < 120604 then
              leaf c 120603 34359738370
            else
              leaf c 120628 34359738369
        else
          if c < 120655 then
            if c < 120630 then
              leaf c 120629 262144
            else
              leaf c 120654 34359738370
          else
            if c < 120656 then
              leaf c 120655 262144
            else
              leaf c 120661 34359738370

@[expose]
public def chunk35 (c : Nat) : Nat :=
  if c < 122703 then
    if c < 121453 then
      if c < 120771 then
        if c < 120714 then
          if c < 120688 then
            if c < 120687 then
              leaf c 120686 34359738369
            else
              leaf c 120687 262144
          else
            if c < 120713 then
              leaf c 120712 34359738370
            else
              leaf c 120713 262144
        else
          if c < 120745 then
            if c < 120720 then
              leaf c 120719 34359738370
            else
              leaf c 120744 34359738369
          else
            if c < 120746 then
              leaf c 120745 262144
            else
              leaf c 120770 34359738370
      else
        if c < 120832 then
          if c < 120778 then
            if c < 120772 then
              leaf c 120771 262144
            else
              leaf c 120777 34359738370
          else
            if c < 120782 then
              leaf c 120779 34359738375
            else
              leaf c 120831 34359738624
        else
          if c < 121399 then
            if c < 121344 then
              leaf c 121343 2097152
            else
              leaf c 121398 32
          else
            if c < 121403 then
              leaf c 121402 2097152
            else
              leaf c 121452 32
    else
      if c < 121600 then
        if c < 121477 then
          if c < 121462 then
            if c < 121461 then
              leaf c 121460 2097152
            else
              leaf c 121461 32
          else
            if c < 121476 then
              leaf c 121475 2097152
            else
              leaf c 121476 32
        else
          if c < 121499 then
            if c < 121479 then
              leaf c 121478 2097152
            else
              leaf c 121483 131072
          else
            if c < 121505 then
              leaf c 121503 32
            else
              leaf c 121519 32
      else
        if c < 122688 then
          if c < 122634 then
            if c < 122624 then
              leaf c 121628 262144
            else
              leaf c 122633 2
          else
            if c < 122635 then
              leaf c 122634 16
            else
              leaf c 122687 2
        else
          if c < 122696 then
            if c < 122690 then
              leaf c 122689 7
            else
              leaf c 122695 2
          else
            if c < 122700 then
              leaf c 122699 7
            else
              leaf c 122702 2147483655
  else
    if c < 123136 then
      if c < 122829 then
        if c < 122736 then
          if c < 122707 then
            if c < 122705 then
              leaf c 122704 2
            else
              leaf c 122706 2147483655
          else
            if c < 122728 then
              leaf c 122727 2
            else
              leaf c 122735 7
        else
          if c < 122752 then
            if c < 122738 then
              leaf c 122737 2
            else
              leaf c 122751 7
          else
            if c < 122768 then
              leaf c 122753 16
            else
              leaf c 122774 2
      else
        if c < 122915 then
          if c < 122888 then
            if c < 122880 then
              leaf c 122879 8589934600
            else
              leaf c 122886 17179869216
          else
            if c < 122907 then
              leaf c 122904 17179869216
            else
              leaf c 122913 17179869216
        else
          if c < 122928 then
            if c < 122918 then
              leaf c 122916 17179869216
            else
              leaf c 122922 17179869216
          else
            if c < 123023 then
              leaf c 122989 8589934600
            else
              leaf c 123023 17179869216
    else
      if c < 123584 then
        if c < 123214 then
          if c < 123191 then
            if c < 123184 then
              leaf c 123180 16
            else
              leaf c 123190 32
          else
            if c < 123200 then
              leaf c 123197 8
            else
              leaf c 123209 256
        else
          if c < 123536 then
            if c < 123215 then
              leaf c 123214 16
            else
              leaf c 123215 2097152
          else
            if c < 123566 then
              leaf c 123565 16
            else
              leaf c 123566 32
      else
        if c < 124112 then
          if c < 123632 then
            if c < 123628 then
              leaf c 123627 16
            else
              leaf c 123631 32
          else
            if c < 123647 then
              leaf c 123641 256
            else
              leaf c 123647 524288
        else
          if c < 124140 then
            if c < 124139 then
              leaf c 124138 16
            else
              leaf c 124139 8
          else
            if c < 124144 then
              leaf c 124143 32
            else
              leaf c 124153 256

@[expose]
public def chunk36 (c : Nat) : Nat :=
  if c < 126124 then
    if c < 124896 then
      if c < 124644 then
        if c < 124415 then
          if c < 124400 then
            if c < 124398 then
              leaf c 124397 16
            else
              leaf c 124399 32
          else
            if c < 124401 then
              leaf c 124400 16
            else
              leaf c 124410 256
        else
          if c < 124640 then
            if c < 124608 then
              leaf c 124415 131072
            else
              leaf c 124638 16
          else
            if c < 124643 then
              leaf c 124642 16
            else
              leaf c 124643 17179869216
      else
        if c < 124656 then
          if c < 124647 then
            if c < 124646 then
              leaf c 124645 16
            else
              leaf c 124646 17179869216
          else
            if c < 124654 then
              leaf c 124653 16
            else
              leaf c 124655 17179869216
        else
          if c < 124670 then
            if c < 124661 then
              leaf c 124660 16
            else
              leaf c 124661 17179869216
          else
            if c < 124671 then
              leaf c 124670 16
            else
              leaf c 124671 8
    else
      if c < 125218 then
        if c < 124928 then
          if c < 124909 then
            if c < 124904 then
              leaf c 124902 16
            else
              leaf c 124907 16
          else
            if c < 124912 then
              leaf c 124910 16
            else
              leaf c 124926 16
        else
          if c < 125136 then
            if c < 125127 then
              leaf c 125124 16
            else
              leaf c 125135 1024
          else
            if c < 125184 then
              leaf c 125142 32
            else
              leaf c 125217 1
      else
        if c < 125259 then
          if c < 125255 then
            if c < 125252 then
              leaf c 125251 2
            else
              leaf c 125254 32
          else
            if c < 125256 then
              leaf c 125255 17179869216
            else
              leaf c 125258 32
        else
          if c < 125278 then
            if c < 125264 then
              leaf c 125259 8
            else
              leaf c 125273 256
          else
            if c < 126065 then
              leaf c 125279 131072
            else
              leaf c 126123 1024
  else
    if c < 126530 then
      if c < 126469 then
        if c < 126209 then
          if c < 126128 then
            if c < 126125 then
              leaf c 126124 2097152
            else
              leaf c 126127 1024
          else
            if c < 126129 then
              leaf c 126128 524288
            else
              leaf c 126132 1024
        else
          if c < 126255 then
            if c < 126254 then
              leaf c 126253 1024
            else
              leaf c 126254 2097152
          else
            if c < 126464 then
              leaf c 126269 1024
            else
              leaf c 126467 34359738384
      else
        if c < 126505 then
          if c < 126500 then
            if c < 126497 then
              leaf c 126495 34359738384
            else
              leaf c 126498 34359738384
          else
            if c < 126503 then
              leaf c 126500 34359738384
            else
              leaf c 126503 34359738384
        else
          if c < 126521 then
            if c < 126516 then
              leaf c 126514 34359738384
            else
              leaf c 126519 34359738384
          else
            if c < 126523 then
              leaf c 126521 34359738384
            else
              leaf c 126523 34359738384
    else
      if c < 126553 then
        if c < 126541 then
          if c < 126537 then
            if c < 126535 then
              leaf c 126530 34359738384
            else
              leaf c 126535 34359738384
          else
            if c < 126539 then
              leaf c 126537 34359738384
            else
              leaf c 126539 34359738384
        else
          if c < 126548 then
            if c < 126545 then
              leaf c 126543 34359738384
            else
              leaf c 126546 34359738384
          else
            if c < 126551 then
              leaf c 126548 34359738384
            else
              leaf c 126551 34359738384
      else
        if c < 126561 then
          if c < 126557 then
            if c < 126555 then
              leaf c 126553 34359738384
            else
              leaf c 126555 34359738384
          else
            if c < 126559 then
              leaf c 126557 34359738384
            else
              leaf c 126559 34359738384
        else
          if c < 126567 then
            if c < 126564 then
              leaf c 126562 34359738384
            else
              leaf c 126564 34359738384
          else
            if c < 126572 then
              leaf c 126570 34359738384
            else
              leaf c 126578 34359738384

@[expose]
public def chunk37 (c : Nat) : Nat :=
  if c < 128752 then
    if c < 127245 then
      if c < 126704 then
        if c < 126603 then
          if c < 126590 then
            if c < 126585 then
              leaf c 126583 34359738384
            else
              leaf c 126588 34359738384
          else
            if c < 126592 then
              leaf c 126590 34359738384
            else
              leaf c 126601 34359738384
        else
          if c < 126629 then
            if c < 126625 then
              leaf c 126619 34359738384
            else
              leaf c 126627 34359738384
          else
            if c < 126635 then
              leaf c 126633 34359738384
            else
              leaf c 126651 34359738384
      else
        if c < 127153 then
          if c < 127024 then
            if c < 126976 then
              leaf c 126705 262144
            else
              leaf c 127019 2097152
          else
            if c < 127136 then
              leaf c 127123 2097152
            else
              leaf c 127150 2097152
        else
          if c < 127185 then
            if c < 127169 then
              leaf c 127167 2097152
            else
              leaf c 127183 2097152
          else
            if c < 127232 then
              leaf c 127221 2097152
            else
              leaf c 127244 1024
    else
      if c < 127504 then
        if c < 127338 then
          if c < 127306 then
            if c < 127280 then
              leaf c 127279 2097152
            else
              leaf c 127305 21476933632
          else
            if c < 127312 then
              leaf c 127311 2097152
            else
              leaf c 127337 21476933632
        else
          if c < 127370 then
            if c < 127344 then
              leaf c 127343 2097152
            else
              leaf c 127369 21476933632
          else
            if c < 127462 then
              leaf c 127406 2097152
            else
              leaf c 127490 2097152
      else
        if c < 127744 then
          if c < 127568 then
            if c < 127552 then
              leaf c 127547 2097152
            else
              leaf c 127560 2097152
          else
            if c < 127584 then
              leaf c 127569 2097152
            else
              leaf c 127589 2097152
        else
          if c < 128000 then
            if c < 127995 then
              leaf c 127994 2097152
            else
              leaf c 127999 1048576
          else
            if c < 128732 then
              leaf c 128729 2097152
            else
              leaf c 128748 2097152
  else
    if c < 129648 then
      if c < 129104 then
        if c < 129008 then
          if c < 128987 then
            if c < 128768 then
              leaf c 128764 2097152
            else
              leaf c 128986 2097152
          else
            if c < 128992 then
              leaf c 128987 34361835520
            else
              leaf c 129003 2097152
        else
          if c < 129024 then
            if c < 129009 then
              leaf c 129008 2097152
            else
              leaf c 129023 34361835520
          else
            if c < 129040 then
              leaf c 129035 2097152
            else
              leaf c 129095 2097152
      else
        if c < 129216 then
          if c < 129168 then
            if c < 129120 then
              leaf c 129113 2097152
            else
              leaf c 129159 2097152
          else
            if c < 129200 then
              leaf c 129197 2097152
            else
              leaf c 129211 2097152
        else
          if c < 129280 then
            if c < 129232 then
              leaf c 129217 2097152
            else
              leaf c 129240 262144
          else
            if c < 129632 then
              leaf c 129623 2097152
            else
              leaf c 129645 2097152
    else
      if c < 130032 then
        if c < 129759 then
          if c < 129736 then
            if c < 129664 then
              leaf c 129660 2097152
            else
              leaf c 129734 2097152
          else
            if c < 129740 then
              leaf c 129736 2097152
            else
              leaf c 129757 2097152
        else
          if c < 129792 then
            if c < 129775 then
              leaf c 129771 2097152
            else
              leaf c 129786 2097152
          else
            if c < 129940 then
              leaf c 129938 2097152
            else
              leaf c 130031 2097152
      else
        if c < 178208 then
          if c < 131072 then
            if c < 130042 then
              leaf c 130041 256
            else
              leaf c 130042 2097152
          else
            if c < 173824 then
              leaf c 173791 16
            else
              leaf c 178206 16
        else
          if c < 191472 then
            if c < 183984 then
              leaf c 183981 16
            else
              leaf c 191456 16
          else
            if c < 194560 then
              leaf c 192093 16
            else
              leaf c 195101 16

@[expose]
public def chunk38 (c : Nat) : Nat :=
  if c < 917536 then
    if c < 249856 then
      if c < 201552 then
        leaf c 201546 16
      else
        leaf c 210041 16
    else
      if c < 917505 then
        leaf c 261183 16
      else
        leaf c 917505 67108864
  else
    if c < 983040 then
      if c < 917760 then
        leaf c 917631 67108864
      else
        leaf c 917999 32
    else
      if c < 1048576 then
        leaf c 1048573 268435456
      else
        leaf c 1114109 268435456

/-- General category and `Other_*` property bits of a code point -/
@[expose]
public def lookup (c : Nat) : Nat :=
  if c < 12736 then
    if c < 4038 then
      if c < 2089 then
        if c < 884 then
          if c < 385 then
            chunk0 c
          else
            chunk1 c
        else
          if c < 1542 then
            chunk2 c
          else
            chunk3 c
      else
        if c < 2876 then
          if c < 2544 then
            chunk4 c
          else
            chunk5 c
        else
          if c < 3192 then
            chunk6 c
          else
            if c < 3570 then
              chunk7 c
            else
              chunk8 c
    else
      if c < 8222 then
        if c < 6320 then
          if c < 4888 then
            chunk9 c
          else
            chunk10 c
        else
          if c < 6992 then
            chunk11 c
          else
            if c < 7579 then
              chunk12 c
            else
              chunk13 c
      else
        if c < 8968 then
          if c < 8486 then
            chunk14 c
          else
            chunk15 c
        else
          if c < 10214 then
            chunk16 c
          else
            if c < 11803 then
              chunk17 c
            else
              chunk18 c
  else
    if c < 70849 then
      if c < 65664 then
        if c < 43456 then
          if c < 42929 then
            chunk19 c
          else
            chunk20 c
        else
          if c < 43872 then
            chunk21 c
          else
            if c < 65121 then
              chunk22 c
            else
              chunk23 c
      else
        if c < 68970 then
          if c < 67672 then
            chunk24 c
          else
            chunk25 c
        else
          if c < 69822 then
            chunk26 c
          else
            if c < 70400 then
              chunk27 c
            else
              chunk28 c
    else
      if c < 119391 then
        if c < 72752 then
          if c < 71935 then
            chunk29 c
          else
            chunk30 c
        else
          if c < 73562 then
            chunk31 c
          else
            if c < 94099 then
              chunk32 c
            else
              chunk33 c
      else
        if c < 124368 then
          if c < 120662 then
            chunk34 c
          else
            chunk35 c
        else
          if c < 126580 then
            chunk36 c
          else
            if c < 196608 then
              chunk37 c
            else
              chunk38 c

end Unicode.PropTable
